---
layout: hosting
title: Known Issues with 3rd Party Services
---

# Known Issues with Cloudflare

<p class="lead">There are some issues with CloudFlare that users have reported that is beyond our control. Here is how to resolve the problem.</p>

## CloudFlare Acceleration

If you use CloudFlare for your DNS and use their acceleration service, your Divshot performance will be diminished, and you may experience cacheing delays, and delays in content updates.

When using Divshot High-Performance, it is required that you disable CloudFlare Acceleration for maximum performance.

To disable, under DNS settings for your app in CloudFlare, click the orange cloud icon under 'Active' to disable CloudFlare, and show a gray cloud icon. The result is shown below.

<img src="{% asset_path guides/cloudflare-disable.png %}" alt="CloudFlare DNS Zone File" class="img-responsive">
