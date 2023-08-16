/*
WebAssembly Example 3

Copyright 2019 Ahmet Inan <inan@aicodix.de>
*/

#include "quirks.hh"
#include "complex.hh"
#include "example.hh"
#include "window.hh"
#include "filter.hh"
#include "coeffs.hh"
#include "decibel.hh"
#include "fft.hh"

static const int SPACING = 50;
static const int BINS_44100 = 44100 / SPACING;
static const int BINS_48000 = 48000 / SPACING;
static const int BINS_MAX = max(BINS_44100, BINS_48000);
float input[BINS_MAX], output[BINS_MAX/2+1];

bool show_rainbow = true;
bool show_phosphor = true;
int draw_color = 0;
int cur_bins = 0;
int cur_rate = 0;

template <typename TYPE, int WIDTH, int HEIGHT>
struct Image {
	static const int width = WIDTH;
	static const int height = HEIGHT;
	static const int length = WIDTH * HEIGHT;
	TYPE pixels[length];
	void set(int x, int y, TYPE c)
	{
		if (0 <= x && x < width && 0 <= y && y < height)
			pixels[width * y + x] = c;
	}
	void fill(TYPE c)
	{
		for (int i = 0; i < length; ++i)
			pixels[i] = c;
	}
	void vline(int x, TYPE c)
	{
		if (0 <= x && x < width)
			for (int i = 0; i < height; ++i)
				set(x, i, c);
	}
	void hline(int y, TYPE c)
	{
		if (0 <= y && y < height)
			for (int i = 0; i < width; ++i)
				set(i, y, c);
	}
	// only made for abs(x0-x1) <= 1
	void line(int x0, int y0, int x1, int y1, TYPE c)
	{
		int a0 = min(y0, (y0 + y1) / 2);
		int a1 = max(y0, (y0 + y1) / 2);
		for (int y = a0; y <= a1; ++y)
			set(x0, y, c);
		int b0 = min((y0 + y1) / 2, y1);
		int b1 = max((y0 + y1) / 2, y1);
		for (int y = b0; y <= b1; ++y)
			set(x1, y, c);
	}
};

static const int SCOPE_WIDTH = min(BINS_44100, BINS_48000) / 2 + 1;
static const int SCOPE_HEIGHT = SCOPE_WIDTH / 2;
Image<int, SCOPE_WIDTH, SCOPE_HEIGHT> scope;

static const int SPECTRUM_WIDTH = min(BINS_44100, BINS_48000) / 2 + 1;
static const int SPECTRUM_HEIGHT = SPECTRUM_WIDTH / 4;
Image<int, SPECTRUM_WIDTH, SPECTRUM_HEIGHT> spectrum;

static const int SPECTROGRAM_WIDTH = SPECTRUM_WIDTH;
static const int SPECTROGRAM_HEIGHT = SPECTROGRAM_WIDTH / 2;
Image<int, SPECTROGRAM_WIDTH, SPECTROGRAM_HEIGHT> spectrogram;

int rgba(float r, float g, float b, float a)
{
	r = min(max(r, 0.f), 1.f);
	g = min(max(g, 0.f), 1.f);
	b = min(max(b, 0.f), 1.f);
	a = min(max(a, 0.f), 1.f);
	r = sqrt(r);
	g = sqrt(g);
	b = sqrt(b);
	//a = sqrt(a);
	int R = nearbyint(255.f * r);
	int G = nearbyint(255.f * g);
	int B = nearbyint(255.f * b);
	int A = nearbyint(255.f * a);
	return (A << 24) | (B << 16) | (G << 8) | (R << 0);
}

int alpha(float a)
{
	a = min(max(a, 0.f), 1.f);
	int A = nearbyint(255.f * a);
	return A << 24;
}

int rainbow(float v)
{
	v = min(max(v, 0.f), 1.f);
	float r = 4.f * v - 2.f;
	float g = 1.f - 4.f * abs(v - .5f);
	float b = 2.f - 4.f * v;
	float a = 4.f * v;
	return rgba(r, g, b, a);
}

void _start()
{
	for (int i = 0; i < spectrogram.width; ++i)
		spectrogram.vline(i, rainbow((float)i/spectrogram.width));
}

template <typename TYPE, int BINS, int OVERLAP>
class STFT
{
	typedef TYPE value_type;
	typedef DSP::Complex<value_type> complex_type;
	DSP::Hann<value_type> window;
	DSP::LowPass2<value_type> filter;
	DSP::Coeffs<BINS * OVERLAP, value_type, true> win;
	DSP::RealToHalfComplexTransform<BINS, complex_type> fwd;
	value_type inp[BINS], tmp[BINS*(OVERLAP-1)];
	complex_type out[BINS/2+1];
public:
	STFT() : filter(1, BINS), win(&window, &filter) {}
	void operator()(value_type *dB, const value_type *sig)
	{
		for (int i = 0; i < BINS; ++i)
			inp[i] = win[i+BINS*(OVERLAP-1)] * sig[i];
		for (int j = 0; j < OVERLAP-1; ++j)
			for (int i = 0; i < BINS; ++i)
				inp[i] += win[BINS*j+i] * tmp[BINS*j+i];
		for (int j = 0; j < OVERLAP-2; ++j)
			for (int i = 0; i < BINS; ++i)
				tmp[BINS*j+i] = tmp[BINS*(j+1)+i];
		for (int i = 0; i < BINS; ++i)
			tmp[BINS*(OVERLAP-2)+i] = sig[i];
		fwd(out, inp);
		for (int i = 0; i < BINS/2+1; ++i)
			dB[i] = DSP::decibel(norm(out[i]));
	}
};

static const int OVERLAP = 3;
STFT<float, BINS_44100, OVERLAP> stft_44100;
STFT<float, BINS_48000, OVERLAP> stft_48000;
float dB_avg[SPECTRUM_WIDTH], avg_max;

void stft()
{
	if (cur_rate == 44100)
		stft_44100(output, input);
	else
		stft_48000(output, input);
	if (show_phosphor) {
		for (int i = 0; i < spectrum.length; ++i)
			spectrum.pixels[i] = draw_color |
				(((((spectrum.pixels[i]>>24)&255)*7)>>3)<<24);
		for (int i = 0; i < scope.length; ++i)
			scope.pixels[i] = draw_color |
				(((((scope.pixels[i]>>24)&255)*7)>>3)<<24);
	} else {
		spectrum.fill(draw_color);
		scope.fill(draw_color);
	}
	for (int b = 0, i0, j0; b < scope.width; ++b) {
		float scale = (scope.height-1) / 2.f;
		int v = nearbyint(scale * (1.f-input[b]));
		int i1 = b;
		int j1 = v;
		if (b)
			scope.line(i0, j0, i1, j1, 0xff000000 | draw_color);
		i0 = i1;
		j0 = j1;
	}
	for (int i = 0; i < spectrum.width; ++i)
		dB_avg[i] = DSP::lerp(dB_avg[i], output[i], 0.05f);
	float tmp_min = dB_avg[0];
	for (int i = 1; i < spectrum.width; ++i)
		tmp_min = min(tmp_min, dB_avg[i]);
	float dB_min = max(tmp_min, -120.f);
	float tmp_max = output[0];
	for (int i = 1; i < spectrum.width; ++i)
		tmp_max = max(tmp_max, output[i]);
	avg_max = DSP::lerp(avg_max, tmp_max, avg_max < tmp_max ? 0.5f : 0.05f);
	float dB_max = avg_max;
	for (int b = 0, i0, j0; b < spectrum.width; ++b) {
		float dB = output[b];
		float scale = (spectrum.height-1) / (dB_min-dB_max);
		int v = nearbyint(scale * (dB-dB_max));
		int i1 = b;
		int j1 = min(max(v, 0), spectrum.height-1);
		if (b)
			spectrum.line(i0, j0, i1, j1, 0xff000000 | draw_color);
		i0 = i1;
		j0 = j1;
	}
	for (int j = spectrogram.height-1; j; --j)
		for (int i = 0; i < spectrogram.width; ++i)
			spectrogram.pixels[spectrogram.width*j+i] = spectrogram.pixels[spectrogram.width*(j-1)+i];
	for (int b = 0; b < spectrogram.width; ++b) {
		float dB = output[b];
		float v = (1.f/(dB_min-dB_max)) * (dB-dB_max);
		if (show_rainbow)
			spectrogram.pixels[b] = rainbow(1.f-v);
		else
			spectrogram.pixels[b] = alpha(1.f-v) | draw_color;
	}
}

void change_rate(int rate)
{
	cur_rate = rate;
	if (cur_rate == 44100)
		cur_bins = BINS_44100;
	else
		cur_bins = BINS_48000;
}

void toggle_rainbow()
{
	show_rainbow = !show_rainbow;
}

void toggle_phosphor()
{
	show_phosphor = !show_phosphor;
}

void change_color(int color)
{
	draw_color = 0x00ffffff & color;
}

int input_length()
{
	return cur_bins;
}

float *input_pointer()
{
	return input;
}

int scope_length()
{
	return scope.length;
}

int scope_width()
{
	return scope.width;
}

int scope_height()
{
	return scope.height;
}

int *scope_pointer()
{
	return scope.pixels;
}

int spectrum_length()
{
	return spectrum.length;
}

int spectrum_width()
{
	return spectrum.width;
}

int spectrum_height()
{
	return spectrum.height;
}

int *spectrum_pointer()
{
	return spectrum.pixels;
}

int spectrogram_length()
{
	return spectrogram.length;
}

int spectrogram_width()
{
	return spectrogram.width;
}

int spectrogram_height()
{
	return spectrogram.height;
}

int *spectrogram_pointer()
{
	return spectrogram.pixels;
}

