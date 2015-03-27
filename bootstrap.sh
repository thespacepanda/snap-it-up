#!/usr/bin/env bash

apt-get update
apt-get -y install software-properties-common
add-apt-repository -y ppa:hvr/ghc
apt-get update
apt-get -y install cabal-install-1.20 ghc-7.8.4 happy-1.19.4 alex-3.1.3

echo "export PATH=$PATH:~/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.8.4/bin:/opt/happy/1.19.4/bin:/opt/alex/3.1.3/bin" >> /home/vagrant/.bash_profile

su vagrant <<EOSU
cabal update
cabal install snap
EOSU
