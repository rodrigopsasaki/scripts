#!/bin/bash
git --version > /dev/null 2>&1
GIT_IS_AVAILABLE=$?

if [ $GIT_IS_AVAILABLE -eq 0 ]; then 

  git config --system color.ui true
  git config --system core.autocrlf input

  #User info
  git config --global user.name 'Rodrigo Sasaki'
  git config --global user.email 'rodrigopsasaki@gmail.com'

  #Push/Pull and Conflicts
  git config --global push.default simple
  git config --global pull.rebase true
  git config --global rerere.enabled true

  #Aliases
  git config --global alias.pushcheck 'push --recurse-submodules=check'
  git config --global alias.pushall 'push --recurse-submodules=on-demand'
  git config --global alias.s 'status -s'
  git config --global alias.lg 'log --oneline --decorate --all --graph'

  #Cache credentials
  git config --global credential.helper 'cache --timeout=86400'

  echo 'Git configurations added successfully'

else

  echo 'Git needs to be installed in order to run this script, check how to install it based on your OS'

fi