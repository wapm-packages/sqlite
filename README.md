# SQLite

You can install php with:

```shell
wapm install sqlite
```

## Running

You can run sqlite cli

```shell
$ wapm run sqlite
SQLite version 3.27.2 2019-02-25 16:06:06
Enter ".help" for usage hints.
Connected to a transient in-memory database.
Use ".open FILENAME" to reopen on a persistent database.
sqlite>
```

You can also connect to a specific database

```shell
$ wapm run sqlite chinook.db
wasmer-release run sqlite.wasm -- chinook.db
SQLite version 3.27.2 2019-02-25 16:06:06
Enter ".help" for usage hints.
sqlite>
```


## Building from Source

You will need Emscripten SDK (emsdk) to build the `php.wasm` file.

Steps:

1. Setup emsdk (>= 1.38.11), see [Installation Instructions](https://github.com/juj/emsdk#installation-instructions)
2. Run `bash build.sh`

Build script inspired by [pib](https://github.com/oraoto/pib)

### What works

- Basic queries
- Loading databases from file


### What doesn't work

- Running the final compilation step with optimization

Unknown (TODO: run sqlite tests and see if anything breaks)
