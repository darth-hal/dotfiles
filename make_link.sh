#!/bin/bash

git submodule init
git submodule update

ln -s ${PWD}/.bashrc ~/.bashrc
ln -s ${PWD}/.profile ~/.profile
ln -s ${PWD}/.vimrc ~/.vimrc
ln -s ${PWD}/.vim ~/.vim
