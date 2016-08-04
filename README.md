# bash-npm-req
Require bash scripts the npm way


## Install

    npm install bash-npm-req --save


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


## Licesne
[MIT](LICENSE)
