---
layout: hosting
title: HTTP Authentication in Divshot
---

# HTTP Authentication in Divshot

<p class="lead">Divshot allows you to protect your development and staging environments using HTTP authentication with one simple command.</p>

## Adding Authentication to Your App

In the directory for your Divshot project, type the following to set up [basic access authentication](http://en.wikipedia.org/wiki/Basic_access_authentication) for an environment:

    divshot protect [environment] [username:password]

## Removing Authentication

To unprotect an environment, use the following command:

    divshot unprotect [environment]