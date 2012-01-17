#!/bin/bash

git submodule init
git submodule update

ln -si ${PWD}/_bashrc ~/.bashrc
ln -si ${PWD}/_profile ~/.profile
ln -si ${PWD}/_vimrc ~/.vimrc
ln -si ${PWD}/_vim ~/.vim
ln -si ${PWD}/_gvimrc ~/.gvimrc
