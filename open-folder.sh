#!/bin/bash

if [[ ${1} =~ "~" ]]
then
  open $(sed -r 's#~#'$HOME'#' <<< "$1")
else
  open ${1}
fi