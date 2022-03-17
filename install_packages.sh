#!/bin/bash
set -e

# always set this for scripts but don't declare as ENV..
export DEBIAN_FRONTEND=noninteractive

## Custum install packages
install2.r  --error -r $CRAN --skipinstalled \
    shinythemes \
    shinydashboard \
    shinyjs \
    shinyWidgets \
    shinycssloaders \
    shinyalert \
    shinymanager \
    bs4Dash

# Install from GitHub
# installGithub.r \
#     paulc91/shinyauthr

rm -rf /tmp/downloaded_packages
rm -rf /var/lib/apt/lists/*
