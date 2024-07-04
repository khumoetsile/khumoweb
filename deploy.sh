#!/bin/bash
# Exit immediately if a command exits with a non-zero status
set -e

# Variables
USER="khumocob"
HOST="khumo.co.bw/cpanel"
DIR="public_html"

# Build the Angular project
ng build --prod

# Transfer the build files to the server
rsync -avz --delete dist/your-angular-project-name/ $USER@$HOST:$DIR
