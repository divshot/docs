---
layout: hosting
title: "Environment Variables on Divshot.io"
---

# Environment Variables on Divshot.io

<p class="lead">Divshot's development, staging, and production environments are great for operations, but don't solve the problem of service configurations. Environment variables are a great way to specify API keys for 3rd party services.</p>

Be careful not to set any secret keys as environment variables, as this data will be accessible
to your users. An appropriate use case for environment variables would be analytics tracking codes.

## Adding Environment Variables to Your App

In the directory for your Divshot.io project, you can see the current variables for your application's
various environments:

    divshot env production
    
To set environment variables, just use `env:add`:

    divshot env:add production KEY1=value1 KEY2=value2

## Using Environment Variables in Your App

To access environment variables in your application, add a script tag:

```
<script src="/__/env.js"></script>
```

The contents of this file will look something like this:

```
this.__env = {"KEY1":"value1", "KEY2":"value2"};
```

They can be accessed like so:

```  
console.log(window.__env.KEY1);
```

Environment variables may also be loaded as raw JSON located at this path: `/__/env.json`

## Local Environment

Divshot's [static web server](/guides/local-dev) will read environment variables from `.env.json` in the project root.

To help developers get started on an existing project, a set of environment variables can be 
automatically pulled down to `.env.json`:

```
divshot env:pull development
```

## Rollback

Configuration changes create new releases and can be rolled back just like any other release.

See the [Builds](/guides/builds) guide for more details on rolling back releases.
