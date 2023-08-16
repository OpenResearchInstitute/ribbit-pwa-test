/*
WebAssembly Example 3

Copyright 2019 Ahmet Inan <inan@aicodix.de>
*/

#pragma once

extern "C" {

__attribute__((visibility("default")))
void _start();

__attribute__((visibility("default")))
void toggle_rainbow();

__attribute__((visibility("default")))
void toggle_phosphor();

__attribute__((visibility("default")))
void change_rate(int);

__attribute__((visibility("default")))
void change_color(int);

__attribute__((visibility("default")))
void stft();

__attribute__((visibility("default")))
int input_length();

__attribute__((visibility("default")))
float *input_pointer();

__attribute__((visibility("default")))
int scope_length();

__attribute__((visibility("default")))
int scope_width();

__attribute__((visibility("default")))
int scope_height();

__attribute__((visibility("default")))
int *scope_pointer();

__attribute__((visibility("default")))
int spectrum_length();

__attribute__((visibility("default")))
int spectrum_width();

__attribute__((visibility("default")))
int spectrum_height();

__attribute__((visibility("default")))
int *spectrum_pointer();

__attribute__((visibility("default")))
int spectrogram_length();

__attribute__((visibility("default")))
int spectrogram_width();

__attribute__((visibility("default")))
int spectrogram_height();

__attribute__((visibility("default")))
int *spectrogram_pointer();

}
