---
layout: hosting
title: "Continuous Deployment with Wercker"
---

# Continuous Deployment with Wercker

<p class="lead">Divshot.io is built for powerful front-end applications. Using Wercker for Continuous Integration and
Continuous Deployment makes your front-end stack just as powerful as your back-end!</p>

Integrating with [Wercker](http://wercker.com/) allows you to both run tests and run build processes for your static applications as soon
as you commit them to GitHub.

## Configuring wercker.yml

First, you'll need to make sure that your Wercker build script does whatever compilation, concatenation, and minifaction
you need and sets up the Divshot.io root directory exactly as you want it. Once you've done that, you'll need to add
deploy configuration to your `wercker.yml`:

```yaml
# Add this to your wercker.yml below your builds and build steps
deploy:

  # The steps that will be executed on build
  steps:
    - script:
        name: deploy to divshot.io
        code: |
          npm install -g divshot-cli 
          divshot push $WERCKER_DEPLOYTARGET_NAME --token $DIVSHOT_TOKEN
```

You'll need to ensure the `WERCKER_DEPLOYTARGET_NAME` is one of `development`, `staging`, or `production` and you'll have to
set the `DIVSHOT_TOKEN` variable to your divshot API key.

You can get your divshot api key from the divshot command line tools.

First login to the service:

    divshot login

And then get your token:

    divshot auth:token

Your token will be printed to stdout.