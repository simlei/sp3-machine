export DESIRED_GLOBAL_GO_VERSION="1.10"

export GOPATH="$HOME/go"
export GOROOT="/usr/lib/go-$DESIRED_GLOBAL_GO_VERSION"
[ ! -d $GOROOT ] && log_error "desired GO version ($DESIRED_GLOBAL_GO_VERSION) not found, looked for it at $GOROOT."
[ ! -d $GOROOT ] && export GOROOT=$(go env | grep GOROOT | cut -d'"' -f2)

PATH_add "$GOROOT"
PATH_add "$GOPATH/bin"

# TODO: installing go somewhere else seems messy... :(
