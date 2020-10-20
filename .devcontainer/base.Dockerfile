FROM mcr.microsoft.com/vscode/devcontainers/java:11

# Install JDK 8 and optionally Maven and Gradle - version of "" installs latest
ARG JDK8_VERSION=""
ARG INSTALL_MAVEN="true"
ARG MAVEN_VERSION=""

RUN su vscode -c "source /usr/local/sdkman/bin/sdkman-init.sh && if [ "${JDK8_VERSION}" = "" ]; then \
        sdk install java \$(sdk ls java | grep -m 1 -o ' 8.*.hs-adpt ' | awk '{print \$NF}'); \
        else sdk install java '${JDK8_VERSION}'; fi" \
    && if [ "${INSTALL_MAVEN}" = "true" ]; then su vscode -c "source /usr/local/sdkman/bin/sdkman-init.sh && sdk install maven \"${MAVEN_VERSION}\""; fi
