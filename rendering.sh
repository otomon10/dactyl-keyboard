#!/bin/bash
START_TIME=$SECONDS
#openscad binary - just makes stuff tidy
OPENSCAD=openscad
PREFIX_FILE_PATH=things/custom/
render() {
  echo "Processing "${1}"...."
  out_file=${PREFIX_FILE_PATH}${1}.stl
  in_file=${PREFIX_FILE_PATH}${1}.scad
  rm -f ${out_file}
  ${OPENSCAD} -o ${out_file} ${in_file}
}

render "side-sample" & \
render "Dactyl-top-left" & \
render "Dactyl-bottom-left" & \
render "Dactyl-top-right" & \
render "Dactyl-bottom-right" & \
render "Dactyl-wrist-rest-right"

ELAPSED_TIME=$(($SECONDS - $START_TIME))
echo "finished!! execution time: $(($ELAPSED_TIME/60)) min $(($ELAPSED_TIME%60)) sec"
