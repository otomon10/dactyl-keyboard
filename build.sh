#!/bin/bash
docker run --rm -v $(pwd)/src:/dactyl/src -v $(pwd)/things:/dactyl/things dactyl
