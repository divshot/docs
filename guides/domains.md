---
layout: hosting
title: "Custom Domains on Divshot"
---

# Custom Domains on Divshot

<p class="lead">It's easy to get your Divshot app up and running on a custom domain.</p>

You'll need to first add the domain into your Divshot app, and then set up your DNS to point at your app. You must do both parts for your custom domain to work.

## Adding the Domain to Your App

### Using the Dashboard

To add a custom domain to your app using the Dashboard, follow these steps:

In your app list, select an app and go to your app settings page:

<img src="{% asset_path guides/app-settings.jpg %}" alt="App Settings" class="img-responsive">

Enter your domain - it is recommended you add both `www` and `non-www` if you are not 100% sure.

<img src="{% asset_path guides/app-settings-domain.jpg %}" alt="App Settings" class="img-responsive">

Click Add Domain

That's it! Set up your DNS if you haven't done so already, give it a few minutes to propagate and enjoy using a custom domain!

### Environment Domains

If you are using a [High-Performance](/guides/high-performance) app you are also able to use a custom domain on your development and staging environments. See the [Environment Domains Guide](/guides/environment-domains)


### Using the CLI

In the directory for your Divshot project, you can see existing custom domains for your app
like so:

    divshot domains

To add a new custom domain, just use `domains:add`:

    divshot domains:add www.my-app.com

To remove a domain, just use `domains:remove`:

    divshot domains:remove www.my-app.com

## Setting up DNS

Once you've added the custom domain to your app, you will need to create a `CNAME` pointing your
domain to `your-app.divshot.io`. If you've already added the custom domain using the command line
tool, you should be able to see your site up and running immediately!


Do not use `production.your-app.divshot.io` when setting up a domain for your Production environment. Use only `your-app.divshot.io`.

* [Guides for Namecheap, GoDaddy, Enom, and more!](http://docs.divshot.com/guides/domains/registrars)

## Apex Domains

We do not presently offer `A` record IP addresses to host apex domains with Divshot. If you wish
to use the apex domain (e.g. `my-app.com` instead of `www.my-app.com`) with Divshot you will need
to make use of a DNS provider that offers top-level domain aliasing. These providers are known to
work (let us know if there are others!):

* [CloudFlare](http://cloudflare.com)
* [DNSimple](http://dnsimple.com)
* [DNS Made Easy](http://dnsmadeeasy.com)

### Guides:

* [Apex with Cloudflare](/guides/domains/apex-cloudflare) **Recommended if you want to use `https`**
* [Apex with Route53 (External Site)](http://blog.chares.io/using-apex-domains-with-divshot-aws/)

If you have any questions about custom domains, please [get in touch](mailto:support@divshot.io).
