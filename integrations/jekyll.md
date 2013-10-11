---
layout: default
title: Publishing Jekyll Sites to Divshot.io
---

# Publishing Jekyll Sites to Divshot.io

[Jekyll](http://jekyllrb.com/) is a powerful static website generator that works great with
Divshot.io (in fact, it's powering this very documentation site!).

## Getting Started

First, you'll need a working Ruby runtime and to install Jekyll:

    gem install jekyll
    
You'll also need Node.js and the Divshot command-line tool:

    npm install -g divshot
    
## Configuring Divshot.io

To publish a Jekyll site properly, you'll want to specify the Jekyll compile folder (defaults
to `_site`):

    divshot config:add root _site
    
## Running Locally

To take advantage of advanced Divshot.io features like custom routing, you'll want to serve
your app locally using the Divshot server:

    divshot server
    
Note that it will automatically use the `root` configuration to serve up the `_site` directory.
To get updates as you develop, you can use Jekyll's `--watch` flag while the server is running:

    jekyll build --watch
    
This will automatically recompile as you save files which will then be served up by the Divshot
local server.

## Deploying

This tells us that when you deploy from this application, you want to use the content in the
`_site` directory. Now, when you want to release, you can just do:

    jekyll build && divshot release