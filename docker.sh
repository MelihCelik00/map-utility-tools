#!/bin/bash

# Build the Docker image
docker build -t tippecanoe:latest .

# Run the Docker container
docker run -it --rm \
  -v /tiledata:/data \
  tippecanoe:latest \
  tippecanoe -z22 --output=./output.mbtiles /data/example.geojson