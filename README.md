# SQLite CLI in WASM

Build script inspired by [pib](https://github.com/oraoto/pib)

## Building

You'll need `emcc` set up to run the install script

then run `./build.sh`

## Status

### What works

- Basic queries
- Loading databases from file


### What doesn't work

- Running the final compilation step with optimization

Unknown (TODO: run sqlite tests and see if anything breaks)