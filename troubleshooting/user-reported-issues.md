---
layout: hosting
title: User Reported Issues
---

# Known Issues Reported by Users

<p class="lead">These are issues caused by users that we're in the process of protecting.</p>

## App Deletion/Recreation

If you create an app, delete it, and immediately recreate it again using:

* The same app name
* Or the same custom domain name

It will cause issues during our app deletion process. The new app you create will not function normally.

If you've done this and notice issues such as:

* Custom domain name doesn't work properly
* New app points to content of old app
* Unexpected 404s

Please [contact support](mailto:support@divshot.com) to get this resolved.

## CA Bundle

Though a CA Bundle is optional, it is **highly** recommended. You may get invalid certificate errors when visiting your app.

Please use the [What's My Chain Cert?](https://whatsmychaincert.com) tool to determine what bundle you should use, and generate one if necessary. **Note**: If you haven't already installed SSL on your domain, you should paste your certificate into the generator to get the correct chain.
