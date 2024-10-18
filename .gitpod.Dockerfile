# Use Gitpod's default full workspace image as a base
FROM gitpod/workspace-full-vnc

# Install Python 3, pip, and other necessary dependencies
RUN sudo apt-get update && \
    sudo apt-get install -y python3 python3-pip python3-dev python3-venv

# Upgrade pip to the latest version
RUN pip3 install --upgrade pip

# Pre-install commonly used Python packages to speed up the workspace setup
RUN pip3 install numpy pandas scikit-learn

# Install SuperMaven with OpenAI API configuration if necessary
# (adjust according to SuperMaven's setup process)
RUN code --install-extension Supermaven.supermaven

# Set environment variables (if necessary, such as the OpenAI API key)
ENV OPENAI_API_KEY=<your-openai-api-key>

# Optional: Set a working directory
WORKDIR /workspace

# Any additional setup commands can go here


