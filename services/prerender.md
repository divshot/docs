---
layout: hosting
title: Prerender SEO Service
---

<div class="alert alert-warning"><b>Beta Alert:</b> This feature is currently in beta and is subject to change.</div>

# Prerender SEO Service

<p class="lead">Search engine optimization (SEO) is one of the most annoying challenges when building single page web applications. Divshot's Prerender service makes it easy to serve up rendered JavaScript pages for search engine crawlers.</p>

Prerender checks `_escaped_fragment_` in the URL or inspects the user agent for each request made to your app.

If a search crawler is detected, we return a cached page or render the page behind the scenes with PhantomJS. The crawler sees the actual rendered markup shown to the user!

## Getting Started

If you're using HTML5 pushState, you'll need to add a `fragment` meta tag to the `<head>` of your app, such as `index.html`:

```html
<meta name="fragment" content="!">
```

If you're using URLs with hashes `#`, make sure to use hashbangs `#!` instead.

Next you'll need to define a `prerender` key in your `divshot.json` file. A basic example:

```json
{
  "prerender": {}
}
```

## Configuration

If you'd like to change how your pages are cached and served by Prerender, the following options are available:

- **refetch:** Can either be an integer number of days to keep before refetching or an object describing URLs and their individual refetch length.
- **blacklist:** An array of routes that should be ignored by the prerender service. Anything that requires a login to access should be blacklisted, as an example.
- **whitelist:** If a refetch routeset is present and this is true, only the routes specified in refetch will be allowed for Prerender. Otherwise, you can set it to an array of routes.

#### More Examples

```json
{
  "prerender": {
    "refetch": 7,
    "blacklist": ["/account/**"]
  }
}
```

```json
{
  "prerender": {
    "refetch": {
      "/": 1,
      "/articles/**": 7
    },
    "whitelist": true
  }
}
```

## Testing Prerender

Let's verify Prerender is working for your app. Compare the source of one of your pages with and without `_escaped_fragment` in the URL. If you're using HTML5 pushState, you can check specific routes like so:

```
http://my-app.divshot.io/dashboard
http://my-app.divshot.io/dashboard?_escaped_fragment=
```

For URLs with hashbangs, add the route after `#!` to the end of `?_escaped_fragment_=`:

```
http://my-app.divshot.io/#!/dashboard
http://my-app.divshot.io/?_escaped_fragment_=/dashboard
```