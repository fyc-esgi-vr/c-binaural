#include <stdio.h>
#include <phonon.h>
#include <algorithm>
#include <fstream>
#include <iterator>
#include <vector>



std::vector<float> load_input_audio(const std::string filename)
{
    std::ifstream file(filename.c_str(), std::ios::binary);

    file.seekg(0, std::ios::end);
    auto filesize = file.tellg();
    auto numsamples = static_cast<int>(filesize / sizeof(float));

    std::vector<float> inputaudio(numsamples);
    file.seekg(0, std::ios::beg);
    file.read(reinterpret_cast<char*>(inputaudio.data()), filesize);

    return inputaudio;
}
void save_output_audio(const std::string filename, std::vector<float> outputaudio)
{
    std::ofstream file(filename.c_str(), std::ios::binary);
    file.write(reinterpret_cast<char*>(outputaudio.data()), outputaudio.size() * sizeof(float));
}

int main() {
    // printf() displays the string inside quotation
    printf("Hello, World!");
    std::vector<float> inputaudio = load_input_audio("inputaudio.wav");

    IPLContextSettings contextSettings{};
    contextSettings.version = STEAMAUDIO_VERSION;

    IPLContext context = nullptr;
    iplContextCreate(&contextSettings, &context);

    IPLHRTFSettings hrtfSettings{};
    hrtfSettings.type = IPL_HRTFTYPE_DEFAULT;

    IPLAudioSettings audioSettings{};
    audioSettings.samplingRate = 44100;
    audioSettings.frameSize = 1024;

    IPLHRTF hrtf = nullptr;
    iplHRTFCreate(context, &audioSettings, &hrtfSettings, &hrtf);

    IPLBinauralEffectSettings effectSettings{};
    effectSettings.hrtf = hrtf;

    IPLBinauralEffect effect = nullptr;
    iplBinauralEffectCreate(context, &audioSettings, &effectSettings, &effect);

    float* inData[] = { inputaudio.data() };

    IPLAudioBuffer inBuffer{};
    inBuffer.numChannels = 1;
    inBuffer.numSamples = audioSettings.frameSize;
    inBuffer.data = inData;

    IPLAudioBuffer outBuffer{};
    iplAudioBufferAllocate(context, 2, audioSettings.frameSize, &outBuffer);

    std::vector<float> outputaudioframe(2 * audioSettings.frameSize);
    std::vector<float> outputaudio;

    int numframes = inputaudio.size() / audioSettings.frameSize;

    for (auto i = 0; i < numframes; ++i)
    {
        // render a frame of spatialized audio and append to the end of outputaudio
        IPLBinauralEffectParams params;
        params.direction = IPLVector3{ 1.0f, 1.0f, 1.0f };
        params.interpolation = IPL_HRTFINTERPOLATION_NEAREST;
        params.spatialBlend = 1.0f;
        params.hrtf = hrtf;

        iplBinauralEffectApply(effect, &params, &inBuffer, &outBuffer);

        iplAudioBufferInterleave(context, &outBuffer, outputaudioframe.data());

        std::copy(std::begin(outputaudioframe), std::end(outputaudioframe), std::back_inserter(outputaudio));

        // advance the input to the next frame
        inData[0] += audioSettings.frameSize;
    }
    iplAudioBufferFree(context, &outBuffer);
    iplBinauralEffectRelease(&effect);
    iplHRTFRelease(&hrtf);
    iplContextRelease(&context);

    save_output_audio("outputaudio.raw", outputaudio);
    return 0;
}