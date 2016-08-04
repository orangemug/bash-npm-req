# bash-npm-req
Require bash scripts the npm way


## Install
Install via npm

```
npm install bash-npm-req --save
```

## Usage
Each module defines a `package.json` as per nodejs

```
{
  "name": "some-awesome-module",
  "description: "It's pretty awesome!",
  "shellMain": "foo.sh"
}
```

With the difference being `shellMain` points to a shell script to load. Now you can `req`uire bash modules!

```
req "some-awesome-module"

someAwesomeFn "hello"
```

You can either source the `req.sh` to make it work, or call the script with 

```
bash-npm-req ./path/to/script.sh
```

Or require the `req.sh` directly in the base of your bash module

```
source "$(basename "$BASH_SOURCE")/node_modules/bash-npm-req/req.sh"

# Now require as you would in nodejs
req "./some/relative/path"
req "a-module-in-node-modules"
```


## License
[MIT](LICENSE)
