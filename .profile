# add docker support for every console
if ! command -v boot2docker >/dev/null; then
  /usr/local/bin/boot2docker up &> /dev/null
  $(/usr/local/bin/boot2docker shellinit &> /dev/null)
fi

# change ruby version to 2.1.5
if ! command -v rvm >/dev/null; then
  rvm use --create 2.1.5 > /dev/null
fi
