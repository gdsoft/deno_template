## Commands

- Run `deno run --import-map=imports.json src/index.js`

- generate lock file `deno cache --lock=deps_lock.json --lock-write deps.ts`

- install deps on new machine `deno cache --reload --lock=deps_lock.json deps.ts`

- test deps installed `deno run --lock=deps_lock.json --cached-only src/index.js`

## Other Flags

- Watch files `--watch --unstable`

- `-A`, `--allow-all` Allow all permissions. This disables all security.

- `--allow-env` Allow environment access for things like getting and setting of environment variables `const PORT = Deno.env.get("PORT")` or `const env = Deno.env.toObject()`.

- `--allow-hrtime` Allow high-resolution time measurement. High-resolution time can be used in timing attacks and fingerprinting.

- `--allow-net=<allow-net>` Allow network access. You can specify an optional, comma-separated list of domains to provide an allow-list of allowed domains.

- `--allow-plugin` Allow loading plugins. Please note that --allow-plugin is an unstable feature.

- `--allow-read=<allow-read>` Allow file system read access. You can specify an optional, comma-separated list of directories or files to provide a allow-list of allowed file system access.

- `--allow-run` Allow running subprocesses. Be aware that subprocesses are not run in a sandbox and therefore do not have the same security restrictions as the deno process. Therefore, use with caution.

- `--allow-write=<allow-write>` Allow file system write access. You can specify an optional, comma-separated list of directories or files to provide a allow-list of allowed file system access.


## Notes

- Command Line arguments available in `Deno.args`

- Environment Variables available via `Deno.env.get("VAR")` but must run with `--allow-env` flag

- Dockerfile has the basics of generating a container to deploy your App for Heroku or Fly.io