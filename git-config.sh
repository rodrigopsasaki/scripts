#!/bin/bash
git config --system color.ui true
git config --system core.autocrlf input

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
