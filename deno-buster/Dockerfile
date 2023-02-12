FROM mcr.microsoft.com/vscode/devcontainers/base:bullseye

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
  wget \
  unzip \
  fontconfig

  # Install Starpship
RUN curl -sS https://starship.rs/install.sh | sh

RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/vscode/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting --depth 1 \
  # Download zsh-autosuggestions
  && git clone https://github.com/zsh-users/zsh-autosuggestions /home/vscode/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth 1 \
  # Zsh config, etc
  && curl -sLo /home/vscode/.zshrc https://raw.githubusercontent.com/ArtieFuzzz/devcontainers/main/.zshrc \
  && curl -sLo /home/vscode/.profile https://raw.githubusercontent.com/ArtieFuzzz/devcontainers/main/.profile \
  && curl -sL https://raw.githubusercontent.com/Favna/dotfiles/main/extra/line-highlighters-addition.zsh >> /home/vscode/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/highlighters/line/line-highlighter.zsh

RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb \ 
  && dpkg -i packages-microsoft-prod.deb \
  && apt-get update \
  && apt-get -y install \
  powershell

USER vscode

# Install Deno
RUN curl -fsSL https://deno.land/install.sh | sh

CMD ["/bin/zsh"]