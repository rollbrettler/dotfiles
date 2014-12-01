# add docker support for every console
/usr/local/bin/boot2docker up > /dev/null
$(/usr/local/bin/boot2docker shellinit) > /dev/null

# change ruby version to 2.1.5
rvm use 2.1.5 > /dev/null
