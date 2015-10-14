# add docker support for every console
if command -v docker-machine > /dev/null; then
  docker-machine start dev
  eval "$(docker-machine env dev)"
fi

# initialize rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if test -f "/usr/local/share/zsh/site-functions/_aws"; then
  source /usr/local/share/zsh/site-functions/_aws
fi

if command -v brew >/dev/null; then
  . `brew --prefix`/etc/profile.d/z.sh
fi

# added by travis gem
[ -f /Users/timpetter/.travis/travis.sh ] && source /Users/timpetter/.travis/travis.sh
