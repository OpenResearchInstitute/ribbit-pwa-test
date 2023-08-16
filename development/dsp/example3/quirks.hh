/*
WebAssembly Example 3

Copyright 2019 Ahmet Inan <inan@aicodix.de>
*/

#pragma once

static inline float sqrt(float a) { return __builtin_sqrtf(a); }
static inline double sqrt(double a) { return __builtin_sqrt(a); }
namespace DSP { using ::sqrt; }

static constexpr int abs(int a) { return a < 0 ? -a : a; }
static inline float abs(float a) { return __builtin_fabsf(a); }
static inline double abs(double a) { return __builtin_fabs(a); }
namespace DSP { using ::abs; }

static constexpr int min(int a, int b) { return a < b ? a : b; }
static inline float min(float a, float b) { return __builtin_fminf(a, b); }
static inline double min(double a, double b) { return __builtin_fmin(a, b); }
namespace DSP { using ::min; }

static constexpr int max(int a, int b) { return a > b ? a : b; }
static inline float max(float a, float b) { return __builtin_fmaxf(a, b); }
static inline double max(double a, double b) { return __builtin_fmax(a, b); }
namespace DSP { using ::max; }

static inline float nearbyint(float a) { return __builtin_nearbyintf(a); }
static inline double nearbyint(double a) { return __builtin_nearbyint(a); }
namespace DSP { using ::nearbyint; }
