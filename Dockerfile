ARG BASE
ARG BYOND_MAJOR
ARG BYOND_MINOR
FROM mcr.microsoft.com/powershell:7.2.0-preview.3-nanoserver-1809 AS base
FROM base AS app
WORKDIR /app
COPY ./download_file.ps1 .
RUN pwsh -Command .\download_file.ps1 ${BYOND_MAJOR} ${BYOND_MINOR}
