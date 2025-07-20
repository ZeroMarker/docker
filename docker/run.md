# Run

The `docker run` command has many options to configure containers. Here are some of the most commonly used ones:

## Basic Options

- `-d, --detach`: Run container in background and print container ID.
- `--name`: Assign a name to the container.
- `-i, --interactive`: Keep STDIN open even if not attached.
- `-t, --tty`: Allocate a pseudo-TTY.

## Networking

- `-p, --publish`: Publish a container’s port(s) to the host. Example: `-p 8080:80`.
- `--network`: Connect a container to a network. Example: `--network my-network`.
- `--link`: Add link to another container. Example: `--link container-name:alias`.

## Volume and Storage

- `-v, --volume`: Bind mount a volume. Example: `-v /host/path:/container/path`.
- `--mount`: Attach a filesystem mount to the container. Example: `--mount type=bind,source=/host/path,target=/container/path`.

## Environment Variables

- `-e, --env`: Set environment variables. Example: `-e MY_ENV_VAR=my_value`.
- `--env-file`: Read in a file of environment variables. Example: `--env-file ./env.list`.

## Resource Constraints

- `-m, --memory`: Memory limit. Example: `-m 512m`.
- `--cpus`: Number of CPUs. Example: `--cpus 2`.
- `--cpu-shares`: CPU shares (relative weight). Example: `--cpu-shares 512`.

## Restart Policies

- `--restart`: Restart policy to apply when a container exits. Example: `--restart always`.

## Logging and Debugging

- `--log-driver`: Logging driver for the container. Example: `--log-driver syslog`.
- `--log-opt`: Log driver options. Example: `--log-opt max-size=10m`.
- `--rm`: Automatically remove the container when it exits.

## Security

- `--security-opt`: Security options. Example: `--security-opt seccomp=unconfined`.
- `--user`: Username or UID (format: <name|uid>[:<group|gid>]). Example: `--user 1001:1001`.

## Other Useful Options

- `--entrypoint`: Overwrite the default ENTRYPOINT of the image. Example: `--entrypoint /my/entrypoint.sh`.
- `--workdir, -w`: Working directory inside the container. Example: `-w /app`.
- `--hostname`: Container host name. Example: `--hostname my-container`.

### Example with Multiple Options

Here’s an example command that uses multiple options:

```bash
docker run --name my-nginx -d -p 8080:80 -v /host/nginx.conf:/etc/nginx/nginx.conf:ro -e NGINX_ENV=production --cpus 1.5 --memory 512m --restart always nginx
```

This command:

- Names the container `my-nginx`.
- Runs it in detached mode.
- Maps port 8080 on the host to port 80 in the container.
- Binds a volume from the host to the container for the Nginx configuration file, in read-only mode.
- Sets an environment variable `NGINX_ENV` to `production`.
- Limits the container to 1.5 CPUs and 512 MB of memory.
- Sets the restart policy to always restart the container.

You can refer to the [official Docker documentation](https://docs.docker.com/engine/reference/run/) for a comprehensive list of all available options.
