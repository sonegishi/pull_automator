#!/usr/local/bin/zsh
# This assumes all repositories in the local pc is cloned using SSH

for repo in `\find $HOME/GitHub -name .git`; do
  echo ""
  echo "****** Getting latest for" ${repo} "******"
  cd "${repo}" && cd .. && git co master && git pull
  echo "******************************************"
  git co -
done

