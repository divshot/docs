---
layout: hosting
title: Monitor Divshot App Performance with New Relic Browser
---

# Monitor App Performance with New Relic

<p class="lead"><a href="http://newrelic.com">New Relic</a> provides a comprehensive suite of application
performance monitoring tools, including sophisticated tools for monitoring
browser applications.</p>

To integrate New Relic monitoring with your Divshot application, you will need
to generate a JavaScript snippet for a "standalone" browser application. New
Relic provides [detailed documentation](https://docs.newrelic.com/docs/browser/new-relic-browser/installation-configuration/adding-apps-new-relic-browser)
for how to make this happen.

Once you've installed the snippet, simply deploy your Divshot application and
you'll be good to go!

### Environment-Based Monitoring

To monitor individual environments using New Relic follow the steps below:

1. Ensure you're loading [environment variables](/guides/environment-variables) in your Divshot application using `<script src="/__/env.js"></script>` inside the `<head>` tag.

2. Paste the New Relic JS snippet directly below it (e.g. `<script type="text/javascript">window.NREUM|...`).

3. In the snippet find this section: `applicationID:"abc123"` and replace it with `applicationID:window.__env.new_relic_application_id`.

4. Set `new_relic_application_id` for each environment using `divshot env:add`:

```
  divshot env:add development new_relic_application_id=[key]
  divshot env:add staging new_relic_application_id=[key]
  divshot env:add production new_relic_application_id=[key]
```