#!/bin/bash

# Install Flutter in GitHub Codespaces
echo "Installing Flutter..."

# Download Flutter
git clone https://github.com/flutter/flutter.git -b stable /usr/local/flutter

# Add to PATH
export PATH="/usr/local/flutter/bin:$PATH"
echo 'export PATH="/usr/local/flutter/bin:$PATH"' >> ~/.bashrc

# Run Flutter doctor
flutter doctor

# Accept Android licenses
yes | flutter doctor --android-licenses

echo "Flutter installation complete!"
echo "Please run: source ~/.bashrc"
