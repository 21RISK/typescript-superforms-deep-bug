# [Choice] Node.js version (use -bullseye variants on local arm64/Apple Silicon): 16, 14, 12, 16-bullseye, 14-bullseye, 12-bullseye, 16-buster, 14-buster, 12-buster
# View more here: https://mcr.microsoft.com/v2/vscode/devcontainers/javascript-node/tags/list
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-22.04

##########################################################################
# Install NVM / Node.js / npm
##########################################################################
ENV NVM_VERSION v0.39.1
ENV NODE_VERSION v20
ENV NVM_DIR /usr/local/nvm

# Create NVM directory
RUN mkdir -p $NVM_DIR

# Install NVM
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Install Node.js using NVM and set default version
RUN /bin/bash -c "source $NVM_DIR/nvm.sh && nvm install $NODE_VERSION && nvm alias default $NODE_VERSION && nvm use default"

# Set environment variables for Node.js
ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH


# Ensure NVM is sourced when a new shell starts
RUN echo 'export NVM_DIR="$NVM_DIR"' >> /etc/bash.bashrc
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> /etc/bash.bashrc

# Change permissions for npm global directory
RUN chown -R vscode:vscode $NVM_DIR
#######################################################################

##########################################################################
# Git things: Mark git as safe workspace (and more)
##########################################################################
RUN git config --global --add safe.directory /workspace
# Install git and bash-completion
RUN apt-get update && \
    apt-get install -y git bash-completion
# Add the bash completion script to the shell initialization
RUN echo "source /usr/share/bash-completion/completions/git" >> /home/vscode/.bashrc
##########################################################################