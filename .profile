# add docker support for every console
if command -v docker-machine > /dev/null; then
  docker-machine start dev
  eval "$(docker-machine env dev)"
fi

# change ruby version to 2.2.1
if command -v rvm >/dev/null; then
  rvm use --create 2.2.1 > /dev/null
fi

# initialize rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if test -f "/usr/local/share/zsh/site-functions/_aws"; then
  source /usr/local/share/zsh/site-functions/_aws
fi

if command -v brew >/dev/null; then
  . `brew --prefix`/etc/profile.d/z.sh
fi
