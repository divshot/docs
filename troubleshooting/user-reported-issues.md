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

## Invalid SSL Certificates

If you're suddenly getting invalid certificate errors and your certificate is still valid, you'll need to install a CA Bundle to resolve the issue.

Please read the [SSL Certificates](/guides/ssl) guide to learn how to install a CA Bundle.