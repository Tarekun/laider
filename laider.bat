@echo off

set DEFAULT_ENDPOINT=http://localhost:11434
set DEFAULT_MODEL=qwen2.5-coder:32b

:: parse command line arguments for configuration
set OLLAMA_ENDPOINT=%DEFAULT_ENDPOINT%
set MODEL_NAME=%DEFAULT_MODEL%


:parse_args
    if "%~1"=="" goto end_parse
    if "%~1"=="-u" (
        set OLLAMA_ENDPOINT=%~2
        shift
    ) else if "%~1"=="-m" (
        set MODEL_NAME=%~2
        shift
    )

    shift
goto parse_args
:end_parse



:: aider directory setup
if not exist ".aider" (
    echo creating local .aider directory, add it to .gitignore
    mkdir .aider
)

:: aider venv setup
if not exist ".aider\venv" (
    echo aider venv not found, creating it an installing aider
    python -m venv .aider\venv
    call .aider\venv\Scripts\activate.bat
    pip install aider-install
    aider-install
) else (
    call .aider\venv\Scripts\activate.bat
)

set OLLAMA_API_BASE=%OLLAMA_ENDPOINT%
echo OLLAMA_API_BASE set to: %OLLAMA_API_BASE%
echo using model: %MODEL_NAME%

echo Starting aider...
%USERPROFILE%\.local\bin\aider --model ollama_chat/"%MODEL_NAME%"
