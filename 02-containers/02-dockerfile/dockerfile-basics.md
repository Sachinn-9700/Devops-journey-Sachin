# Dockerfile Basics

A Dockerfile is a text file that contains instructions to build a Docker image.

## Basic Structure
FROM <base-image>
WORKDIR /app
COPY . .
RUN <command>
CMD ["executable"]

## Example
FROM ubuntu
RUN apt update && apt install -y nginx
CMD ["nginx", "-g", "daemon off;"]


---
# Dockerfile structure

## FROM
Defines the base image.

## RUN
Executes commands at build time.

## COPY vs ADD
- COPY: preferred, simple
- ADD: extra features (tar, URL) – avoid unless needed

## WORKDIR
Sets working directory.

## CMD
Default command when container starts.

## ENTRYPOINT
Defines fixed executable.
