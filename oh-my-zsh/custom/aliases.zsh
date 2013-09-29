alias reload!='. ~/.zshrc'

function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
