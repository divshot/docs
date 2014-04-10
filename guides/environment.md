---
layout: hosting
title: "Environment Variables on Divshot.io"
---

# Environment Variables on Divshot.io

<p class="lead">Your static-app configuration nightmare is over.</p>

Divshot's development, staging, and production environments are great for operations, but
in and of themselves don't solve the problem of service configurations.

Environment variables are a great way to specify api keys for 3rd party services.

Be careful not to set any secret keys as environment variables, as this data will be accessible
to your users. An appropriate case for environment variables is analytics tracking codes.

### Adding Environment Variables to Your App

In the directory for your Divshot.io project, you can see the current variables for your application's
various environmounts:

    divshot env production
    
To set enviroment variables, just use `env:add`:

    divshot env:add production KEY1=value1 KEY2=value2

### Using Environment Variables in Your App

To access environment variables in your application, add a script tag:

  <script src="/__/env.js"></script>

The contents of this file will look something like this:

  this.__env = {"KEY1":"value1", "KEY2":"value2"};

They can be accessed like so:
  
  console.log(window.__env.KEY1);
    
### Local Environment

The divshot local server will read environment variables from a file in the project root `.env.json`.

To help developers get started on an existing project a set of environment variables can be 
automatically pulled down to `.env.json`

  divshot env:pull development

### Rollback

Configuration changes create new releases and can be rolled back just like any other release.

See the <a href="/guides/builds">Builds</a> guide for more details on rolling back releases.
