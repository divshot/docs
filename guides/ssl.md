---
layout: hosting
title: "Routing in Your Divshot.io Application"
---

# Using SSL With Your Divshot App

We offer full SSL encryption for your Divshot applications across the board. By default, you should be
able to access a secure version of your site just by visiting `https://app-name.divshot.io`. This works
great for your production environment, but what about development and staging?

## Wildcard SSL Rules

Due to the way wildcard SSL works there can only be a single "level" of domain, so to access development
or staging environments with SSL you simply need to replace `.` with `--` in the URL. If I would normally
visit `http://development.my-app.divshot.io`, to visit the SSL-secured version I would go to
`https://development--my-app.divshot.io`. While this isn't quite as pretty (sorry!) it does give you the
ability to fully test SSL capabilities for any of your app's environments.

## Custom Domain SSL

If you need SSL enabled for a custom domain, please [email us](mailto:support@divshot.io) and we'll get
things up and running as quickly as possible.