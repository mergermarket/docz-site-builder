Container for building Acuris documentation.

The working dir is `/app`. It is recommended to map your docs (i.e. markdown/mdx files) at
`/app/src` and your `doczrc.js` at `/app/doczrc.js`. You can then run the docz command
in the container in order to serve of build your docs.

Once you have built your docs it is recommended to `docker cp` them out of the container rather
than to generated into a mapped volume, in order to avoid permissions issues - for example:

```bash
docker cp my-container:/app/.docz/dist built-docs
```
