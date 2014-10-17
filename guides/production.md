---
layout: hosting
title: Production Mode
---

# Production Mode

<p class="lead">You can create as many applications as you'd like to host on
Divshot at no charge. However, to take full advantage of the Divshot platform,
you'll want to purchase a plan with <b>Production Slots</b>.</p>

## Enabling Production Mode

When you purchase a plan (see the [pricing page](http://www.divshot.com/pricing)
for specific availability) you are allotted a certain number of production slots
based on the plan you choose. There are two ways to specify which of your apps
you'd like to be in production mode:

1. From the [Dashboard](https://dashboard.divshot.com), you can drag apps into
   the production slots at the top of the app list, or click on an open slot
   to assign an application.
2. From the Command-Line Interface, you can run `divshot production:on` or
   `divshot production:off` from an app's directory to toggle production for
   that app.

Production mode offers numerous advantages over development, including:

* **Global CDN.** Production apps are cached and distributed via a global CDN.
  Development apps are not cached and served from a single US-East location.
* **Custom Domain SSL.** Only production apps are able to upload SSL
  keys and certificates for use on a custom domain.
* **Wildcard Domains.** Only production apps can utilize wildcard DNS.
* **Priority Support.** Production applications are bumped to the top of the
  support queue.
* **Higher Limits.** Your bandwidth and Divshot Service limits are drastically
  increased on production applications.
* **Soft Limits.** Development applications are cut off as soon as you reach
  their shared bandwidth limit. We won't cut off a production application until
  we've been unable to reach you for 15 days or more.

When an app first enters production mode, we provision CDN hosting for the
app, which may take a few minutes. Similarly, when an app leaves production
mode, we discontinue CDN and SSL hosting. It is *strongly recommended* that you
upgrade your apps to production before you make them publicly available to
ensure performance and availability.

## Production Environments vs. Production Mode

Note that all apps, even development apps, have a production *environment*. Only
apps that appear in one of the production slots in the Dashboard will have the
full advantages of Production Mode.