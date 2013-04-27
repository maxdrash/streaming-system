#!/bin/bash
#
# Copyright 2011 Google Inc. All Rights Reserved.
# Author: tansell@google.com (Tim Ansell)
#
# Gets the Tim's Video git repository needed for all the remaining stages.
#

# We need to install git
apt-get install -y git-core

# Either pull for the first time, or update the current repository
if [ ! -d timvideos ]; then
  git clone https://github.com/timvideos/streaming-system.git
else
  (
    cd timvideos
    git pull
  )
fi

# Update the submodules
(
  cd streaming-system
  git submodule init
  git submodule update
)
