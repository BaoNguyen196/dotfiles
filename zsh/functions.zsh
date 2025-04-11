# Speed up zsh startup - https://gist.github.com/ctechols/ca1035271ad134841284#gistcomment-2308206
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

mkcd() {
  mkdir "$1"
  cd "$1"
}

# Copy file content to clipboard
ctc() {
  if [ "$(uname 2> /dev/null)" != "Linux" ]; then
    pbcopy < $1
  else
    cat $1 | xclip -i
  fi
}

# Checkout new branch
gcc() {
  git reset --hard;
  git clean -df
  git checkout $1;
  git pull -f origin $1;
  git checkout -b $2;
}

# Reset zsh aliases
delAliases() {
  unalias -m '*'
}

personalSSH() {
  ssh-add -D
  ssh-add --apple-use-keychain ~/.ssh/id_ed25519
	echo "Swiched to Personal SSH"
}

officeSSH() {
  ssh-add -D
  ssh-add --apple-use-keychain ~/.ssh/id_ed25519_bao_ts
	echo "Swiched to Office SSH"
}

gcmit() {
	if [ -z "$1" ]; then
  echo "Error: Commit message argument is required"
  exit 1
  fi
	git add .
	git commit -m "$1"
}

gcnb(){
	if [ -z "$1" ]; then
  echo "Error: Branch name argument is required"
  exit 1
	fi
	git checkout -b $1
}

grebasem() {
	git rebase main
}