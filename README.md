This is a fork of zlib repository from @madler that is compatible with emcc, meaning you can use it with WASM!

# Dependencies
* emcc
* make

# Building
```bash
  make wasm
```

# Running
```bash
  emrun dist/function.html
```

Then in the web console or javascript:
```javascript
  var compress = Module.cwrap('string_compress', 'ArrayBuffer', ['string'])
  compress("Hello world")
```