---
layout: hosting
title: "Continuous Deployment with Travis CI"
---

# Continuous Deployment with Travis CI

<p class="lead">Divshot.io is built for powerful front-end applications. Using Travis for Continuous Integration and
Continuous Deployment makes your front-end stack just as powerful as your back-end!</p>

Integrating with [Travis CI](http://www.travis-ci.com) allows you to both run tests and run build processes for your static applications as soon
as you commit them to GitHub. Combine Travis with Divshot.io's [multiple environments](/guides/builds) and you've got
a fantastic way to keep your development processes humming.

## Configuring Travis.yml

First, you'll need to make sure that your Travis build script does whatever compilation, concatenation, and minifaction
you need and sets up the Divshot.io root directory exactly as you want it. Once you've done that, you'll need to add
deploy configuration to your `.travis.yml`:

```yaml
deploy:
  provider: divshot
  environment:
    master: development
    staging: staging
    production: production
  skip_cleanup: true
```

Note that the `skip_cleanup` option prevents Travis from automatically hard resetting to the latest `git` version which
can wipe out your build.

## Adding Your API Key

Next you'll want to encrypt your API key into your Travis configuration so that it isn't exposed in the Git repo. To do
this, install the Travis command line tool (`gem install travis`) and run this command:

    travis encrypt $(divshot auth:token) --add deploy.api_key
    
Once you've added the configuration to your Travis YAML file and encrypted your key, you've got continuous integration
with Divshot.io!