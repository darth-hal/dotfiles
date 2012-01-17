#!/bin/bash

git submodule init
git submodule update

ln -si ${PWD}/.bashrc ~/.bashrc
ln -si ${PWD}/.profile ~/.profile
ln -si ${PWD}/.vimrc ~/.vimrc
ln -si ${PWD}/.vim ~/.vim
