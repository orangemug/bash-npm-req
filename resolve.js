var resolve = require("resolve");


var reqpath    = process.argv[2];
var callerpath = process.argv[3];

try {
  var modulePath = resolve.sync(reqpath, {
    extensions: [".sh"],
    mainKey: "shellMain",
    basedir: callerpath
  })
} catch(err) {
  process.exit(1)
}
console.log(modulePath);
