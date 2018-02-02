#!/bin/bash
if [[ "$(python -c 'from creatures.elthusa import Elthusa; print Elthusa()')" == 'Elthusa vulgaris' ]]; then
  echo pass
else
  echo fail
fi
