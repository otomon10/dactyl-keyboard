#!/bin/bash
PREFIX_FILE_PATH=things/custom/
render() {
  echo "Processing "${1}"...."
  out_file=${PREFIX_FILE_PATH}${1}.stl
  in_file=${PREFIX_FILE_PATH}${1}.scad
  rm -f ${out_file}
  openscad -o ${out_file} ${in_file}
}

render "side-sample" & \
render "Dactyl-top-left" & \
render "Dactyl-bottom-left" & \
render "Dactyl-top-right" & \
render "Dactyl-bottom-right" & \
render "Dactyl-wrist-rest-right" &

echo "now rendering background job... "
