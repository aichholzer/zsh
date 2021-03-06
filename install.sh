#!/usr/bin/env bash

echo
echo Cloning and installing fonts...
git clone https://github.com/powerline/fonts.git --depth=1 2>/dev/null &
PID=$!
LOOP=1
while kill -0 $PID 2>/dev/null; do
  printf  "•"
  sleep 0.02
  ((LOOP+=1))
  if [ $LOOP == 32 ]; then
      sleep 0.35
      echo -ne "\r\033[0K"
      LOOP=1
  fi
done
cd fonts && ./install.sh &>/dev/null && cd ..

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
