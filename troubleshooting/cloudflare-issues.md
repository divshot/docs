---
layout: hosting
title: CloudFlare Issues
---

# Known Issues with CloudFlare

<p class="lead">There's several user reported issues with CloudFlare that are beyond our control. Here's how to resolve the problem.</p>

## CloudFlare Acceleration

If you use CloudFlare for your DNS as well as their acceleration service, your Divshot performance will be diminished. You may experience caching delays and delays in content updates.

When using Divshot High-Performance, it is **required that you disable CloudFlare acceleration for maximum performance.**

To disable, go to the DNS settings for your app in CloudFlare. Click the orange cloud icon under 'Active' to disable acceleration. It should now be a gray cloud icon. The result is shown below:

<img src="{% asset_path guides/cloudflare-disable.jpg %}" alt="CloudFlare DNS Zone File" class="img-responsive">
