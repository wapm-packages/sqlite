# SQLite

You can install sqlite with:

```shell
wapm install sqlite
```

> Note: this repo is inspired by Eric Synk [sqlite3 adaptation for wasm2cil](https://github.com/ericsink/wasm2cil/tree/master/sqlite3).

## Running

You can run the sqlite CLI

```shell
$ wapm run sqlite
SQLite version 3.26.0 2018-12-01 12:34:55
Enter ".help" for usage hints.
Connected to a transient in-memory database.
Use ".open FILENAME" to reopen on a persistent database.
sqlite>
```

You can also connect to a specific database

```shell
$ wapm run sqlite chinook.db
wasmer-release run sqlite.wasm -- chinook.db
SQLite version 3.26.0 2018-12-01 12:34:55
Enter ".help" for usage hints.
sqlite>
```


## Building from Source

You can build SQLite from source very easily with [wasienv](https://github.com/wasienv/wasienv).

Steps:
1. Run `bash build.sh`
