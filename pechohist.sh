# pecohist show your command history and let you grep them, then copy your
# selection to your clipboard

# snagged from:
# https://hashnode.com/post/what-are-your-favourite-bash-aliases-cisdeo5pz1ep46m532dt0r8qb/answer/cisdfular1enzsp53l5cmw047

alias hist="history | cut -c 8-"
pecohist() {
  cmd=$(hist | peco | tr -d '\n')
  $(echo $cmd | pbcopy)
  echo $cmd
}

