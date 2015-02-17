---
layout: hosting
title: "Environment Domains on Divshot"
---

# Environment Domains on Divshot

<p class="lead">High-Performance apps can set a custom domain for Development and Staging environments.</p>

If you are using a Basic app, you must first upgrade to [High-Performance](/guides/high-performance) before you can use Environment Domains.

## Adding the Domain to Your App

### Using the Dashboard

To add a custom domain to your non-production environment using the Dashboard, follow these steps:

In your app list, click on `Add Domain` of the app you want to use.

<img src="{% asset_path guides/domains-app.jpg %}" alt="Add Domain in App" class="img-responsive">

Enter your domain - it is recommended you add both `www` and `non-www` if you are not 100% sure.

<img src="{% asset_path guides/app-settings-domain.jpg %}" alt="App Settings" class="img-responsive">

Click Add Domain

That's it! Set up your DNS if you haven't done so already, give it a few minutes to propagate and enjoy using a custom domain!


### Using the CLI

In the directory for your Divshot project, you can see existing custom domains for your app
like so:

    divshot domains

To add a new custom domain, just use `domains:add`:

    divshot domains:add [environment] environment.my-app.com

To remove a domain, just use `domains:remove`:

    divshot domains:remove [environment] www.my-app.com

## Setting up DNS

Once you've added the custom domain to your app, you will need to create a `CNAME` pointing your
domain to `your-app.divshot.io`. If you've already added the custom domain using the command line
tool, you should be able to see your site up and running immediately!

**Note that we don't yet support custom domains on non-production environments, you must CNAME to `[environment].your-app.divshot.io`.**

In place of `[environment]`, set either [development] or [staging]

* [Guides for Namecheap, GoDaddy, Enom, and more!](http://docs.divshot.com/guides/domains/registrars)