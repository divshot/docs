---
layout: hosting
title: Using SSL with Your Divshot App
---

# Using SSL with Your Divshot App

<p class="lead">We offer SSL on all apps through your <code>divshot.io</code> subdomain. If you want SSL on your custom domain, you need to upgrade to a paid plan and use <a href="/guides/high-performance">High-Performance</a> mode.</p>

## Custom Domain SSL

There are a few ways you can get SSL on your custom domain. If you upgraded to one of our paid plans, you can do one of the following things to go secure.

Note that SSL is only available on production environments. SSL on non-production environments are not supported at this time.

### Have Divshot Do Everything For You

We can purchase and install an SSL certificate for you at a nominal fee. All you have to do is email us at [support@divshot.com](mailto:support@divshot.com?Subject=SSL%20Certificate%20Purchase%20and%20Install&Body=App%20Name%3A%0A%0ACustom%20Domain%20Name%3A%0A%0AWildcard%20%28Y/N%29%3A%20*Wildcard%20Certificates%20cost%20%24200*). A $25 one-time charge will be added to your next bill ($200 for Wildcard certificates). Certificates expire after one year.

### Do It on Your Own

If you know what you're doing and have your own certificate (or plan to buy it yourself) we have two ways you can upload your own:

#### Purchasing Certificates

We **highly** recommend [SSLMate](https://sslmate.com) to purchase certificates. To purchase a certificate from SSLMate, [read their manual.](https://sslmate.com/help/buy)

#### Certificate Format

If you did not buy your certificate from SSLMate, certificates must be in PEM format. If you are unable to open them using a text editor and view plain text, you must [convert them](https://www.sslshopper.com/ssl-converter.html) before installing to Divshot.

#### Easiest Way: Install Your Certificate on the Dashboard

In the Dashboard, click the name of the app you would like to install a certificate on:

<img src="{% asset_path guides/ssl-app.jpg %}" alt="App List" class="img-responsive">

On the top right, click the gear icon to go into settings:

<img src="{% asset_path guides/environments-settings.jpg %}" alt="Environments List" class="img-responsive">

Under Custom SSL, click 'Edit Certificate':

<img src="{% asset_path guides/custom-ssl.jpg %}" alt="Environments List" class="img-responsive">

When all the information is entered and updated, click Change Certificate:

<img src="{% asset_path guides/cert.jpg %}" alt="Certificate" class="img-responsive" style="width: 50%;">

Let it propagate for a few minutes and you're done!

#### CLI Option: Upload Your Certificate through Divshot CLI

Once you have your `.crt` and `.key` files, uploading the certificate is easy. `cd` to your app directory and then:

```
divshot cert path/to/certificate.crt path/to/key.key
```

### SNI Custom SSL

By default, Divshot delivers SSL certificates to browsers using [SNI](https://en.wikipedia.org/wiki/Server_Name_Indication).

If you need non-SNI SSL enabled for a custom domain, please [email us](mailto:support@divshot.com) and we'll get
things up and running as quickly as possible. Note that there is a monthly fee for Non-SNI SSL.

### Force SSL

Forcing all traffic to go through `https://` is available for Performance level apps. If you'd like to do so, [send us an email using this template](mailto:help@divshot.com?Subject=Force%20SSL%20Request&Body=Divshot%20App%20Name%20and%20Custom%20Domain%20Names%3A%0Amyapp1%2C%20myapp1.com), and we can get that processed within 24 hours.

## Wildcard SSL Rules

We offer full SSL encryption for your Divshot applications across the board. By default, you should be
able to access a secure version of your site just by visiting `https://app-name.divshot.io`</code>`. This works
great for your production environment, but what about development and staging?

Due to the way wildcard SSL works there can only be a single "level" of domain, so to access development
or staging environments with SSL you simply need to replace `.` with `--` in the URL. If I would normally
visit `http://development.my-app.divshot.io`, to visit the SSL-secured version I would go to
`https://development--my-app.divshot.io`. While this isn't quite as pretty (sorry!) it does give you the
ability to fully test SSL capabilities for any of your app's environments.
