---
layout: hosting
title: "Forcing HTTPS with Strict Domains"
---

# Using HTTPS with Either www or non-www

<p class="lead">We recommend using <a href="http://www.cloudflare.com">CloudFlare</a> for requiring HTTPS and using a strict domain (www or non-www, but not both)</p>

[CloudFlare](http://www.cloudflare.com) is the recommended way to do this, and it's free for this specific use case.

## Sign Up and Import Existing DNS Records

CloudFlare will automatically import your DNS records after signup, after you get to the records screen follow the instructions below

## Rules for HTTPS and www

Rule #1: `Always Use HTTPS` for `http://mydomain.com`

Rule #2: `Forwarding` > `https://mydomain.com` > `https://www.mydomain.com` > `301 Redirect`

Rule #3: `Forwarding` > `http://mydomain.com` > `https://www.mydomain.com` > `301 Redirect`

## Rules for HTTPS and non-www (Apex)

Rule #1: `Always Use HTTPS` for `http://mydomain.com`

Rule #2: `Forwarding` > `https://www.mydomain.com` > `https://mydomain.com` > `301 Redirect`

Rule #3: `Forwarding` > `http://www.mydomain.com` > `https://mydomain.com` > ` > `301 Redirect`

## General Setup

1. Set `CNAME` for `www` to `my-app.divshot.io`
2. Set `Cname` for `mydomain.com` to `my-app.divshot.io`
3. Apply rules from above
4. If you have requested Force HTTPS from Divshot - Please request us to disable it
