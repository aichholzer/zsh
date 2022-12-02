#!/usr/bin/env bash

echo
rm -rf ~/.zsh* ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &
PID=$!
while kill -0 $PID 2>/dev/null; do
  sleep 1
done

sleep 1
cp ./.zshrc ~/
cp ./aichholzer.zsh-theme ~/.oh-my-zsh/themes/
source ~/.zshrc 2>/dev/null

cd .. && rm -rf zsh

clear
echo
echo 👍🏻
echo Done, restart your terminal or open a new window.
echo
