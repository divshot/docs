---
layout: hosting
title: Publishing Jekyll Sites to Divshot Hosting
---

# Publishing Jekyll Sites to Divshot Hosting

<p class="lead"><a href="http://jekyllrb.com/">Jekyll</a> is a powerful static website generator that works great with
Divshot. In fact, it's powering this very documentation site!</p>

## Getting Started

First, you'll need a working Ruby runtime and to install Jekyll:

    gem install jekyll
    
You'll also need Node.js and the Divshot command-line tool:

    npm install -g divshot-cli
    
## Configuring Divshot

In the project folder for your Jekyll site, initialize a Divshot app:

    divshot init
    
When prompted, supply `_site` as the project's root directory.
    
## Configuring Jekyll

You will likely want to add `divshot.json` to the list of files your Jekyll project is
ignoring. In `_config.yml`, add:

```yaml
exclude:
  - divshot.json
```
    
## Running Locally

To take advantage of advanced Divshot features like custom routing, you'll want to serve
your app locally using the Divshot server:

    divshot server
    
Note that it will automatically use the `root` configuration to serve up the `_site` directory.
To get updates as you develop, you can use Jekyll's `--watch` flag while the server is running:

    jekyll build --watch
    
This will automatically recompile as you save files which will then be served up by the Divshot
local server. You can also run Jekyll in the background:

    jekyll build --watch & divshot server

## Deploying

This tells us that when you deploy from this application, you want to use the content in the
`_site` directory. Now, when you want to release, you can just do:

    jekyll build && divshot push