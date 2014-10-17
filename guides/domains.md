---
layout: hosting
title: "Custom Domains on Divshot"
---

# Custom Domains on Divshot

<p class="lead">It's easy to get your Divshot app up and running on a custom domain.</p>

## Adding the Domain to Your App

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

## Apex Domains

We do not presently offer `A` record IP addresses to host apex domains with Divshot. If you wish
to use the apex domain (e.g. `my-app.com` instead of `www.my-app.com`) with Divshot you will need
to make use of a DNS provider that offers top-level domain aliasing. These providers are known to
work (let us know if there are others!):

* [CloudFlare](http://cloudflare.com)
* [DNSimple](http://dnsimple.com)
* [DNS Made Easy](http://dnsmadeeasy.com)

If you have any questions about custom domains, please [get in touch](mailto:support@divshot.io).