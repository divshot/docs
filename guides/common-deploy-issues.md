---
layout: hosting
title: "Common Deploy Issues"
---

# Common Issues on Deploy

<p class="lead">You're here because you hit an unexpected 404 page. Below are common mistakes made on first deploys.</p>

## Improper Root Directory in divshot.json

The `root` directory when using `divshot init` or when editing `divshot.json` should be the folder that contains `index.html` and/or the contents of your site. The only time where `root` should be blank or unset is when the directory that contains `divshot.json` also contains your site.

Usually if your app uses preprocessors or a build process, the root directory should be set, for example: `_site`, `public`, or `app`.

## The Zip File is not the Root Directory

When using Zip Uploads, the web interface does not read or give the option to set a `divshot.json` configuration file. The Zip file must be the site root directory. When creating the Zip Archive, do not right-click on a folder containing your site and create an archive. Instead, open that folder and select all of the contents contained inside, and create a Zip that way.

## Empty Deploy

Your app directory doesn't actually contain anything. Check in the terminal that you have used `divshot init` in the directory that contains your app.

## Forgot to Build

If you're using a site generator such as Jekyll or Middleman, you must compile your site before deploying to Divshot.

## Unsupported Application

Divshot supports front-end frameworks and technologies. We do not support PHP, Drupal, Wordpress, Node, or any dynamically generated sites. Popular supported frameworks are AngularJS, Ember, React, Polymer, Middleman, Jekyll, etc.
