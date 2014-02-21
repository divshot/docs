---
layout: hosting
title: "Routing in Your Divshot.io Application"
---

# Divshot Routing

<p class="lead">Divshot.io provides simple configuration for custom routing enabling you
both to display clean, user-friendly URLs for your content as well as power sophisticated
apps using HTML5 pushState.</p>

## Clean URLs

You can configure your Divshot.io application to automatically drop the `.html` extension
when serving files by setting the `clean_urls` option in your [Configuration File](/guides/configuration).
For example:

```json
{
  "name": "my-app-name",
  "clean_urls": true
}
```

When Clean URLs are active, if a visitor visits a page that matches a file in your application
without the `.html` extension, the corresponding file will be served. So if I have an `about.html`
file in my application, users would be able to go to `/about` and see the page.

Note that in order to maximize search-engine friendliness when Clean URLs are enabled `.html`
extensions will trigger 301 redirects to the same path with the extension dropped.

## Custom Routes

Custom routes are great for hosting HTML5 pushState applications. They allow you to collapse many
paths to a single file so that you can preserve routing even if serving from a single file.

A single star (`*`) represents a single URL path segment. A double star (`**`) represents any length
of URL. So:

* A route of `/pages/*` would match `/pages/about` but not `/pages/about/company`
* A route of `/app/**/user` would match both `/app/new/user` and `/app/some/longer/url/user`

As an example, if I have an application with a landing page at `index.html` but a signed in page at
`app.html`, I might have routes like the following:

```json
{
  "name": "my-app-name",
  "routes": {
    "/*.html": "index.html",
    "/app/**/*.html": "app.html"
  }
}
```

In my application with this configuration, any URL prefixed with `/app` would serve up `app.html`.