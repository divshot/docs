---
layout: hosting
title: "Environment Domains on Divshot"
---

# Environment Domains on Divshot

<p class="lead">High-Performance apps support custom domains for development and staging environments.</p>

If you are using a basic app, you must first upgrade to [High-Performance](/guides/high-performance) before you can use environment domains.

## Adding the Domain to Your App

There's multiple ways you can assign a domain to an environment. First we'll cover the Dashboard.

### Using the Dashboard

To add a custom domain to your non-production environment using the Dashboard, follow these steps:

In your app list, select an app and go to your app settings page:

<img src="{% asset_path guides/app-settings.jpg %}" alt="App Settings" class="img-responsive">

Enter your domain - it is recommended you add both `www` and `non-www` if you are not 100% sure:

<img src="{% asset_path guides/app-settings-domain.jpg %}" alt="App Settings" class="img-responsive">

Next, click Add Domain.

After a domain is added, you'll be able to choose an environment:

<img src="{% asset_path guides/environment-domains.png %}" alt="Choose Domain" class="img-responsive">

That's it! Set the record in your DNS and you're set.

### Using the CLI

In the directory for your Divshot project, you can see existing custom domains for your app like so:

    divshot domains

To add a new custom domain, just use `domains:add`:

    divshot domains:add [environment] environment.my-app.com

To remove a domain, just use `domains:remove`:

    divshot domains:remove [environment] environment.my-app.com

## Setting up DNS

Once you've added the custom domain to your environment, you will need to create a `CNAME` pointing your
domain to `[environment].your-app.divshot.io`. If you've already added the domain using the command line
tool, you should be able to see your site up and running immediately.

In place of `[environment]`, set either `development` or `staging`.

* [Guides for Namecheap, GoDaddy, Enom, and more!](http://docs.divshot.com/guides/domains/registrars)

## SSL

Environment domains does not support SSL yet. We are planning to support this in the future for Armada (and possibly Fleet). To help us gauge interest this feature, please [send us an email](mailto:support@divshot.com?Subject=Environment%20Domain%20SSL%20Vote&Body=Would%20you%20upgrade%20to%20Fleet%20for%20this%3F%20%28y/n%29%0A%0AWould%20you%20upgrade%20to%20Armada%20for%20this%3F%20%28y/n%29).
