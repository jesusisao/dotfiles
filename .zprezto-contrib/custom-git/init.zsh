# Return if requirements are not found.
if (( ! $+commands[git] )); then
  return 1
fi

git-tempscript () {
  point1=$1
  if [ -z "$point1" ]; then
    point1="origin/master"
  fi

  point2=$2
  if [ -z "$point2" ]; then
    point2="origin/develop"
  fi

  git --no-pager diff $point1..$point2 --name-only -- "temp_scripts/"
}

git-tempscript-summary () {
  point1=$1
  if [ -z "$point1" ]; then
    point1="origin/master"
  fi

  point2=$2
  if [ -z "$point2" ]; then
    point2="origin/develop"
  fi

  git --no-pager diff $point1..$point2 --summary -- "temp_scripts/"
}

git-release-list () {
  point1=$1
  if [ -z "$point1" ]; then
    point1="origin/master"
  fi

  point2=$2
  if [ -z "$point2" ]; then
    point2="origin/develop"
  fi

  git --no-pager log --no-merges --no-decorate --oneline --left-right $point1...$point2
}
