# aria2-alpine
Docker image for Aria2 RPC daemon based on the super lightweight Alpine Linux.

## Usage
Docker image: `ndthuan/aria2-alpine`

Example:
```bash
docker run --rm -p 6800:6800 --name aria2 -d \
-e RPC_SECRET=xxx \
-v $HOME/Downloads:/downloads \
ndthuan/aria2-alpine
```

## Supported environment variables
First, you might want to check out the comprehensive [aria2 configuration docs](https://aria2.github.io/manual/en/html/aria2c.html) along with checking env vars supported by this image:
* `DOWNLOAD_DIR`: maps to aria2's [--dir](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-d) config, where inside the container to put your downloads (default: `/downloads`). You'd rather mount downloads directory on your host to `/downloads` than changing this default value.
* `CONCURRENT_DOWNLOADS`: maps to aria2's [--max-concurrent-downloads](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-j), number of concurrent downloads, default: `4`.
* `CONNECTIONS_PER_SERVER`: maps to aria2 [--max-connection-per-server](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-x), this affects the `SPLIT` config down below, default: `4`.
* `SPLIT`: maps to aria2's [--split](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-s), maximum number of active connections when downloading a file, default: `4`.
* `USER_AGENT`: maps to aria2's [--user-agent](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-u), user agent for HTTP(S) downloads, default: empty.
* `FILE_ALLOCATION`: file allocation method, read [--file-allocation explanation here]([FILE_ALLOCATION](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-file-allocation)) default: `none`.
* `ALLOW_OVERWRITE`: maps to aria2's [--allow-overwrite](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-allow-overwrite), default: `true`.
* `AUTO_FILE_RENAMING`: maps to aria2's [--auto-file-renaming](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-auto-file-renaming), default: `false`.
* `RPC_SECRET`: maps to aria2's [--rpc-secret](https://aria2.github.io/manual/en/html/aria2c.html#cmdoption-rpc-secret).
