---
layout: hosting
title: Performance and Caching in Divshot.io
---

# Performance and Caching in Divshot.io

<p class="lead">Divshot.io serves all content from a Content Delivery Network (CDN) with edge servers located
around the world. You don't need to configure anything for your app to enable this: it's built
in to every app.</p>

Divshot.io's built-in performance features include:

1. Production environment (e.g. `your-app.divshot.io`) served via CDN
2. Automatic gzipping of text-based content
3. Automatic setting of `Cache-Control` headers to one hour for simple browser caching

Note that caching is *not* enabled on development and staging environments; this allows you to
frequently update content on those environments without worrying about a stale browser cache.

## Configuring the Cache

You can manually configure the `Cache-Control` headers for content served in your application
by setting the `cache_control` configuration object in your `divshot.json` file. The path matching
works just like [Divshot.io's routing](/guides/routing) and the values that are supplied work
as follows:

* If you supply an `Integer` value, the `Cache-Control` header is set to `public, max-age=YOURVALUE`.
* If you supply `false`, no `Cache-Control` header is set.
* If you supply a `String`, the `Cache-Control` header is set to the exact value you pass.

Let's take a look at an example `divshot.json`:

```json
{
  "cache_control": {
    "/assets/**": 31536000,
    "/private/**": "no-cache, no-store",
    "/": false
  }
}
```

In this example we might have an application that makes use of asset fingerprinting to create unique
filenames for each JavaScript or CSS file. Because we don't need to worry about a stale cache, we set
the cache control to one year (the maximum allowable by standards).

We have some private content that we are completely disallowing cache, and we also are not passing a
`Cache-Control` header for the root URL.

Note that the cache control headers that you specify only apply to client-side caching. Our CDN will
automatically keep a permanent cache of your application that is purged on each deploy to production.