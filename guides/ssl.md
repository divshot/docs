---
layout: hosting
title: Using SSL With Your Divshot App
---

# Using SSL With Your Divshot App

<p class="lead">We offer full SSL encryption for your Divshot applications across the board. By default, you should be
able to access a secure version of your site just by visiting <code>https://app-name.divshot.io</code>. This works
great for your production environment, but what about development and staging?</p>

## Wildcard SSL Rules

Due to the way wildcard SSL works there can only be a single "level" of domain, so to access development
or staging environments with SSL you simply need to replace `.` with `--` in the URL. If I would normally
visit `http://development.my-app.divshot.io`, to visit the SSL-secured version I would go to
`https://development--my-app.divshot.io`. While this isn't quite as pretty (sorry!) it does give you the
ability to fully test SSL capabilities for any of your app's environments.

## Custom Domain SSL

Divshot supports uploading your own SSL certificates through the command line tool.

Once you have your `.crt` and `.key` files, uploading the certificate data is easy:

```
divshot cert path/to/certificate.crt path/to/key.key
```

By default, Divshot delivers SSL certificates to browsers using the [SNI](https://en.wikipedia.org/wiki/Server_Name_Indication).

If you need non-SNI SSL enabled for a custom domain, please [email us](mailto:support@divshot.com) and we'll get
things up and running as quickly as possible.