alias reload!='. ~/.zshrc'

function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
