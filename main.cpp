#include <stdio.h>
#include <phonon.h>
#include <algorithm>
#include <fstream>
#include <iterator>
#include <vector>

int main() {
    // printf() displays the string inside quotation
    printf("Hello, World!");
    IPLContextSettings contextSettings{};
    contextSettings.version = STEAMAUDIO_VERSION;

    IPLContext context = nullptr;
    iplContextCreate(&contextSettings, &context);
    return 0;
}