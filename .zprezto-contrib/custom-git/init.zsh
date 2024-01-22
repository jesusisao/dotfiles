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
  git fetch
  echo -n -e "\n"
  git --no-pager diff $point1..$point2 --name-only -- "temp_scripts/"
}

git-db-migrate () {
  point1=$1
  if [ -z "$point1" ]; then
    point1="origin/master"
  fi

  point2=$2
  if [ -z "$point2" ]; then
    point2="origin/develop"
  fi
  git fetch
  echo -n -e "\n"
  git --no-pager diff $point1..$point2 --name-only -- "db/migrate/"
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
  git fetch
  echo -n -e "\n"
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
  git fetch
  echo -n -e "\n"
  git --no-pager log --no-merges --no-decorate --oneline --left-right $point1...$point2
}

git-release-list-auth () {
  point1=$1
  if [ -z "$point1" ]; then
    point1="origin/master"
  fi

  point2=$2
  if [ -z "$point2" ]; then
    point2="origin/develop"
  fi
  git fetch
  echo -n -e "\n"
  git --no-pager log --no-merges --pretty=format:"%h%x09%an%x09%s" $point1...$point2
}
