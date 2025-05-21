#!/bin/bash
# Check if ollama is installed
if command -v ollama &> /dev/null
then
    echo "✅ Ollama is already installed."
else
    echo "⬇️ Ollama not found. Installing now..."
    curl -fsSL https://ollama.com/install.sh | sh

    # Recheck if installation succeeded
    if command -v ollama &> /dev/null
    then
        echo "✅ Ollama installed successfully."
    else
        echo "❌ Ollama installation failed."
        exit 1
    fi
fi
ollama pull llama3.2