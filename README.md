# aria2-alpine
Docker image for Aria2 RPC daemon based on the super lightweight Alpine Linux.

## Usage
Docker image: `ndthuan/aria2-alpine`

Example:
`docker run --rm -p 6800:6800 --name aria2 -d -v $HOME/Downloads:/downloads ndthuan/aria2-alpine`

## Supported environment variables
Check out confd [configuration template file](confd/templates/aria2.conf.tmpl) to see all supported environment variables and their usages and their default values.

Also, check out the comprehensive [aria2 configuration docs](https://aria2.github.io/manual/en/html/aria2c.html).
