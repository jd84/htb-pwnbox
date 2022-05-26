alias e='nvim'

function ffile {
    file $1 | tr "," "\n"
}

function ping-until {
    until nc -vzw 2 $1 $2; do sleep 2; done
}
