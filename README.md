# Aider Wrapper

This repository contains a wrapper script for the `aider` library that handles installation and command setup.

## Overview

The `aider` library is a powerful tool for coding with AI assistance. This wrapper simplifies its setup and usage by automating the creation of a virtual environment, installing necessary dependencies, and configuring the API endpoint and model name.

## Usage

### Prerequisites

- Python 3.x
- Git

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/your-repo/aider-wrapper.git
   cd aider-wrapper
   ```

2. Run the wrapper script:

   - On Windows:

     ```bash
     laider.bat [-u <endpoint>] [-m <model>]
     ```

   - On Unix/Linux/MacOS:

     ```bash
     ./laider.sh [-u <endpoint>] [-m <model>]
     ```

### Options

- `-u <endpoint>`: Specify the Ollama API endpoint. Default is `http://localhost:11434`.
- `-m <model>`: Specify the model name. Default is `qwen2.5-coder:32b`.

## Directory Structure

- `.aider/`: Local directory for storing virtual environment and configuration.
- `laider.bat`: Windows batch script for setting up and running `aider`.
- `laider.sh`: Unix/Linux/MacOS shell script for setting up and running `aider`.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
