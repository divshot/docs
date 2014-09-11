---
layout: hosting
title: Publishing Metalsmith Sites to Divshot Hosting
---

# Publishing Metalsmith Sites to Divshot Hosting

<p class="lead"><a href="http://www.metalsmith.io/">Metalsmith</a> is an extremely simple, pluggable static site generator built in Node.js. It's great for publishing static blogs, landers, documentation and more!</p>

## Getting Started

Make sure you have Node.js and then install Metalsmith:

    npm install metalsmith
    
You'll also need the Divshot command-line tool:

    npm install -g divshot-cli
    
## Configuring Divshot

In the project folder for your Metalsmith site, initialize a Divshot app:

    divshot init

By default, Metalsmith writes to a `build` directory. You can change the destination by editing your `metalsmith.json` file or using the JavaScript API.

When prompted, supply `build` as the project's root directory.

## Running Locally

To take advantage of advanced Divshot features like custom routing, you'll want to serve
your app locally using the Divshot server:

    divshot server
    
Note that it will automatically use the `root` configuration to serve up the `build` directory. To get updates as you develop, you'll need to install the [metalsmith-watch](https://github.com/FWeinb/metalsmith-watch) plugin.

### Using the Metalsmith CLI

By default, you'd run the Metalsmith CLI like so:

    node_modules/.bin/metalsmith
    
To run Metalsmith with [metalsmith-watch](https://github.com/FWeinb/metalsmith-watch) and Divshot simultaneously, use the following command:

    node_modules/.bin/metalsmith & divshot server

### Using the Metalsmith API

Similar to the CLI, if you're using the JavaScript API you can run `divshot server` along with the Node process:

    node build.js & divshot server

If you're feeling extra ambitious, you can even run the server directly inside your build script:

```javascript
var spawn = require('child_process').spawn;
var log = function(data){ console.log("[Divshot] " + data.toString().trim()); }

var server = spawn('divshot', ['server', '--port', '3000']);

server.on('error', function(error) { console.log(error.stack) });
server.stdout.on('data', log);
server.stderr.on('data', log);
```

## Deploying

To deploy to Divshot, make sure you build once more using the CLI or API and then simply run:

    divshot push

This will publish your Metalsmith site to the `development` environment for testing.