FROM ubuntu

WORKDIR /root
RUN apt update && apt upgrade -y && apt install -y \
    cmake \
    curl \
    gettext \
    git \
    make \
    ninja-build \
    unzip \
    wget
RUN git clone https://github.com/neovim/neovim
RUN cd neovim && make CMAKE_BUILD_TYPE=Release && make install
RUN rm -rf neovim
RUN git clone https://github.com/Kaiguang/config.git
RUN cd config && ./setupNvim.sh

CMD bash
