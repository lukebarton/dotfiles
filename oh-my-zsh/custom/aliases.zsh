alias reload!='. ~/.zshrc'

function mcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
