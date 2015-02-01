---
layout: hosting
title: "Apex Domains Using CloudFlare"
---

# Setting up an Apex Domain with CloudFlare

<p class="lead">Using Apex domains for your Divshot apps is both <b>easy and free</b> with CloudFlare. This guide will show you how to get everything set up and configured properly.</p>

## Add Your Domain to Divshot

First you'll want to add your domain to Divshot if you haven't already done so. Use the [command line](/guides/domains) or [dashboard](https://dashboard.divshot.com). Omit the `www` since we're going the Apex route, like so:

    divshot domains:add my-app.com

## Add Your Website to CloudFlare

Next you'll want to add your site to CloudFlare and set up a DNS Zone File. Add two CNAME records both pointing to `your-app.divshot.io`, one for the Apex domain and the other for `www`. Make sure they're both active:

<img src="{% asset_path guides/cloudflare-disable.jpg %}" alt="CloudFlare DNS Zone File" class="img-responsive">

**We strongly advise against using CloudFlare acceleration. Under 'Active', click the orange cloud icon and disable it. It should show a gray cloud.**

Enabling CloudFlare acceleration causes issues with caching and delays with content refreshing. When using Divshot's High-Performance mode, CloudFlare acceleration reduces overall performance.

## Create CloudFlare Page Rule

Lastly, you'll want to forward requests from `www.my-app.com` to `my-app.com` using a 301 permanent redirect. Enter the following URL pattern:

    www.my-app.com/*

Turn on forwarding and use the following destination URL:

    http://my-app.com/$1

Your rule should look like this:

<img src="{% asset_path guides/cloudflare-page-rule.jpg %}" alt="CloudFlare Page Rule" class="img-responsive">

## Mission Complete

That's it! You configured CloudFlare to point your domain at Divshot's servers and set up a simple redirect to make sure your users will always hit `my-app.com` instead of `www.my-app.com`.
