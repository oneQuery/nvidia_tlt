#!bin/bash
# Open the webpage
xdg-open 'https://ngc.nvidia.com'

# Instruction
echo "If you are required to log in, please do these steps:"
echo "1. Please log into NGC and accept the terms and conditions"
echo "2. Please click setup on the top right menu"
echo "3. Select the 'Get API Key' tab"
echo "4. Click 'Generate API Key'"
echo "5. Copy the API Key and paste it below"

# Sleep for a few seconds to allow the browser to open
sleep 1

# Log into Docker
docker login nvcr.io
