---
layout: hosting
title: Prerender SEO Service
---

<div class="alert alert-warning"><b>Beta Alert:</b> This feature is currently in beta and is subject to change.</div>

# Prerender JavaScript SEO

<p class="lead">Search engine optimization (SEO) is one of the most annoying challenges when building single page web applications. Divshot has partnered with <a href="http://prerender.io">Prerender</a> to make it easy to serve up rendered JavaScript pages for search engine crawlers.</p>

## How does AJAX crawling work?

Search engines work by fetching and reading through the source code of websites exactly as sent
by the server. Many modern applications use JavaScript to fetch data and populate the
HTML content. Great for developers, but invisible to search engines!

Google [outlined a specification](https://developers.google.com/webmasters/ajax-crawling/) that
allows a convention "HTML Snapshots" of JavaScript applications to be used by search engines
in place of the page source. Basically it works like this:

1. Search engines look for a "hashbang url" (e.g. `#!/some/url`) or a special meta tag in the
   document (i.e. `<meta name="fragment" content="!">`).
2. The search engine makes a special request to the server (details not important) and expects
   the server to return a snapshot of the page *as if JavaScript had already fully executed*.
3. The page snapshot is used for the search engine instead of the empty source.

This is great, because it lets JavaScript applications be fully crawlable. Unfortunately,
it can be very difficult and complicated to set up a proper HTML snapshotting system. Until now.

## Configuration

To make your AJAX application crawlable (in the simplest way possible), all you need to do is
add this to your `divshot.json`:

```json
{
  "prerender": true
}
```

Once you do this, we will automatically add the server-side protocol for taking HTML snapshots
of your pages. Pages are cached the first time they are requested and then re-cached once a day
to make sure the content stays fresh.

If you want a little more control, there are two options available:

* **whitelist:** a JSON array that, if supplied, defines the routes for which Prerender is active.
* **blacklist:** a JSON array of paths you want the Prerender service to ignore.

## Status Codes and Headers

If you'd like to specify the status code or special headers to the search engine, you simply need
to add special `<meta>` tags to the `<head>` of your page using JavaScript:

```html
<!-- return a 404 "Not Found" -->
<meta name="prerender-status-code" content="404">

<!-- return the equivalent of a temporary redirect -->
<meta name="prerender-status-code" content="302">
<meta name="prerender-header" content="Location: http://www.google.com">
```

## Wait for Render

While Prerender generally does a good job of knowing when a page is fully loaded, in some cases
the snapshot will be taken when content has yet to be fully populated. If this happens to you,
early in your page's lifecycle add this JavaScript:

```js
window.prerenderReady = false;
```

Then, once your content has fully loaded set `window.prerenderReady` to `true`. The snapshot will
be taken when the variable is set or 20 seconds elapses (whichever comes first).

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

## Additional Info

If you need additional information about how the system works, we recommend you check out the
documentation on [Prerender.io](https://prerender.io/getting-started). If you have any questions,
feel free to [contact us](mailto:support@divshot.com)!