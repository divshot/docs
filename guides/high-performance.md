---
layout: hosting
title: High Performance Mode
---

# High Performance Mode

<p class="lead">You can create as many applications as you'd like to host on
Divshot at no charge. However, to take full advantage of the Divshot platform,
you'll want to purchase a plan with <b>High Performance Slots</b>.</p>

### Enabling High Performance Mode

When you purchase a plan (see the [pricing page](http://www.divshot.com/pricing)
for specific availability) you are allotted a certain number of High Performance slots
based on the plan you choose. There are two ways to specify which of your apps
you'd like to be in High Performance mode:

1. From the [Dashboard](https://dashboard.divshot.com), you can drag apps into
   the High Performance slots at the top of the app list, or click on an open slot
   to assign an application.
2. From the Command-Line Interface, you can run `divshot performance:on` or
   `divshot performance:off` from an app's directory to toggle High Performance for
   that app.

High Performance mode offers numerous advantages over Basic, including:

* **Global CDN.** High Performance apps are cached and distributed via a global CDN.
  Basic apps are not cached and served from a single US-East location.
* **Custom Domain SSL.** Only High Performance apps are able to upload SSL
  keys and certificates for use on a custom domain.
* **Wildcard Domains.** Only High Performance apps can utilize wildcard DNS.
* **Priority Support.** High Performance applications are bumped to the top of the
  support queue.
* **Higher Limits.** Your bandwidth and Divshot Service limits are drastically
  increased on High Performance applications.
* **Soft Limits.** Basic applications are cut off as soon as you reach
  their shared bandwidth limit. We won't cut off a High Performance application until
  we've been unable to reach you for 15 days or more.

When an app first enters High Performance mode, we provision CDN hosting for the
app, which may take a few minutes. Similarly, when an app leaves High Performance
mode, we discontinue CDN and SSL hosting. It is *strongly recommended* that you
upgrade your apps to High Performance before you make them publicly available to
ensure performance and availability.
