---
layout: hosting
title: Using SSL with Your Divshot App
---

# Using SSL with Your Divshot App

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

Divshot supports uploading your own SSL certificates (including wildcard) through the command line tool.

1. Purchase a new SSL certificate from the domain registrar of your choice.
2. After purchasing, your registrar will ask for a CSR code.
3. Generate a CSR code (`.csr`) and `.key` file manually [using OpenSSL](http://wiki.gandi.net/en/ssl/csr).
4. Validate your domain and finish the certificate approval process.
5. Once approved, your registrar will give you a `.crt` or `.pem` file. [Convert](http://stackoverflow.com/questions/13732826/convert-pem-to-crt-and-key) if you get a `.pem` file.

### Uploading to Divshot

Once you have your `.crt` and `.key` files, uploading the certificate data is easy:

```
divshot cert path/to/certificate.crt path/to/key.key
```

Certificates must be in PEM format. If you are unable to open them using a Text Editor and view plain text, you must convert them before uploading to Divshot.

[Convert SSL Certificates](https://www.sslshopper.com/ssl-converter.html)

### SNI Custom SSL

By default, Divshot delivers SSL certificates to browsers using [SNI](https://en.wikipedia.org/wiki/Server_Name_Indication).

If you need non-SNI SSL enabled for a custom domain, please [email us](mailto:support@divshot.com) and we'll get
things up and running as quickly as possible.

### Force SSL

Forcing all traffic to go through `https://` is available for Performance level apps. If you'd like to do so, [send us an email using this template](mailto:help@divshot.com?Subject=Force%20SSL%20Request&Body=Divshot%20App%20Name%20and%20Custom%20Domain%20Names%3A%0Amyapp1%2C%20myapp1.com), and we can get that processed within 24 hours.
