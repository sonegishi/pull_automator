#!/usr/local/bin/zsh
# This assumes all repositories in the local pc is cloned using SSH

for repo in `\find /Users/SO/GitHub -name .git`; do
  echo ""
  echo "****** Getting latest for" ${repo} "******"
  cd "${repo}" && cd .. && git co master && git pull
  echo "******************************************"
done

