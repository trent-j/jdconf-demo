FROM mcr.microsoft.com/vscode/devcontainers/java:dev-8

ARG INSTALL_MAVEN="true"
ARG MAVEN_VERSION=""

ENV PATH="/usr/local/sdkman/candidates/maven/current/bin:${PATH}"

RUN if [ "${INSTALL_MAVEN}" = "true" ]; then su vscode -c "source /usr/local/sdkman/bin/sdkman-init.sh && sdk install maven \"${MAVEN_VERSION}\""; fi \
    && if [ "${INSTALL_GRADLE}" = "true" ]; then su vscode -c "source /usr/local/sdkman/bin/sdkman-init.sh && sdk install gradle \"${GRADLE_VERSION}\""; fi
