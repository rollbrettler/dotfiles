# add docker support for every console
if command -v boot2docker >/dev/null; then
  boot2docker up &> /dev/null
  $(boot2docker shellinit)
fi

# change ruby version to 2.1.5
if ! command -v rvm >/dev/null; then
  rvm use --create 2.1.5 > /dev/null
fi

source /usr/local/share/zsh/site-functions/_aws