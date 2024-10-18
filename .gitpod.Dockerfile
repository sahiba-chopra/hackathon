FROM gitpod/workspace-full-vnc

# Install Node.js
RUN sudo apt-get update \
  && sudo apt-get install -y nodejs npm

