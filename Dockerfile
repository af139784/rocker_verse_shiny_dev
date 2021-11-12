FROM af139784/rocker_verse_dev:4.1.2

RUN  /rocker_scripts/install_shiny_server.sh

COPY install_packages.sh  /rocker_scripts/.
RUN  /rocker_scripts/install_packages.sh

