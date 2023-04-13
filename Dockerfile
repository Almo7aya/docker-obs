FROM bandi13/gui-docker

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update -y \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:obsproject/obs-studio \
    && add-apt-repository ppa:savoury1/vlc3 \
    && add-apt-repository ppa:savoury1/ffmpeg4 \
    && apt-get update -y \
    && apt-get install -y obs-studio vlc \
    && apt-get clean -y

RUN echo "?package(bash):needs=\"X11\" section=\"DockerCustom\" title=\"OBS Screencast\" command=\"obs\"" >> /usr/share/menu/custom-docker && update-menus
