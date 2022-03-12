FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:bullseye

RUN apt-get update \
  && apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \ 
  gnupg \
  lsb-release \
  software-properties-common

RUN add-apt-repository "deb http://ftp.us.debian.org/debian buster main contrib non-free" \
  && apt-get update \
  && apt-get upgrade -y \
  && apt-get -y install \
  build-essential \
  htop \
  nano \
  neofetch \
  tree \ 
  wget

RUN npm i -g typescript node-gyp rimraf prettier pm2

RUN git clone https://github.com/romkatv/powerlevel10k.git /home/node/.oh-my-zsh/custom/themes/powerlevel10k --depth=1 \
  && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/node/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting --depth 1 \
  # Download zsh-autosuggestions
  && git clone https://github.com/zsh-users/zsh-autosuggestions /home/node/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth 1 \
  # Zsh config, etc
  && curl -sLo /home/node/.zshrc https://raw.githubusercontent.com/ArtieFuzzz/devcontainers/main/.zshrc \
  && curl -sLo /home/node/.profile https://raw.githubusercontent.com/ArtieFuzzz/devcontainers/main/.profile \
  && curl -sLo /home/node/.p10k.zsh https://raw.githubusercontent.com/ArtieFuzzz/devcontainers/main/.p10k.zsh \
  && curl -sL https://raw.githubusercontent.com/Favna/dotfiles/main/extra/line-highlighters-addition.zsh >> /home/node/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/highlighters/line/line-highlighter.zsh

RUN curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh | bash

RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb \ 
  && dpkg -i packages-microsoft-prod.deb \
  && apt-get update \
  && apt-get -y install \
  powershell

USER node

CMD ["/bin/zsh"]