---
layout: hosting
title: "Environment Variables on Divshot"
---

# Environment Variables on Divshot

<p class="lead">Divshot's development, staging, and production environments are great for operations, but don't solve the problem of service configurations. Environment variables are a great way to specify API keys for 3rd party services.</p>

Be careful not to set any secret keys as environment variables, as this data will be accessible
to your users. An appropriate use case for environment variables would be analytics tracking codes.

## Adding Environment Variables to Your App

In the directory for your Divshot project, you can see the current variables for your application's
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

This documentation is hosted on Divshot. Checkout [/__/env.json](/__/env.json) and [/__/env.js](/__/env.js) for concrete examples.

## Release Information

There is a special key called `__release` included by default in the environment
configuration that contains some useful information about the current deploy.

```json
{
  "__release": {
    build_id: "abc123...",
    release: 56,
    timestamp: 1412193270
  }
}
```

The `build_id` is a unique ID for the currently deployed code. The `release` key
is the current numbered release for the environment (it will increment with each
new push or environment change). And `timestamp` is a UNIX integer timestamp of
when the release happened. You can convert it to a JavaScript Date object like
so:

```js
new Date(__env.__release.timestamp * 1000);
```

**Note:** Obviously your local environment doesn't have any release information,
but you can manually add it to `.env.json` to simulate or test out checking release
data in your application.

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
