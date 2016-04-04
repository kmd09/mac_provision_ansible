export DOCKER_CERT_PATH=/Users/Mizuki/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

eval "$(direnv hook zsh)"
export EDITOR=vim

export PYTHONPATH=$PYTHONPATH:/usr/local/opt/pyqt/lib/python2.7/site-packages:/usr/local/opt/sip/lib/python2.7/site-packages
