# setup docker
class { 'docker':
  manage_kernel => false,

  #tcp_bind    => 'tcp://127.0.0.1:4243',
  socket_bind => 'unix:///var/run/docker.sock',
}

#->
# preload base image
# docker::image { 'base': }

# setup gaudi
class { 'gaudi': }
