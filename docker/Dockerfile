FROM cirrusci/flutter:3.0.4

RUN sdkmanager "build-tools;29.0.2" \
    "build-tools;30.0.1" \
    "platforms;android-31" \
    "platform-tools"

# build emulator for integration tests
ENV EMU_IMAGE "system-images;android-32;google_apis;x86_64"
RUN sdkmanager $EMU_IMAGE; echo "no" | avdmanager create avd -f -n testAVD -k $EMU_IMAGE

RUN flutter precache

# install junitreport as a global flutter package and add it to the path
RUN flutter pub global activate junitreport
RUN flutter pub global activate dart_dot_reporter
ENV PATH="/root/.pub-cache/bin:${PATH}"

# install publisher as a global flutter package
RUN flutter pub global activate publisher