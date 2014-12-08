---
layout: hosting
title: "Continuous Deployment with CircleCI"
---

# Continuous Deployment with CircleCI

<p class="lead"><a href="https://circleci.com">CircleCI</a> is a continuous integration service that allows you to run tests after pushing to a GitHub repository and deploy directly to Divshot.</p>

Integrating with [CircleCI](https://circleci.com) allows you to both run tests and build processes for your static applications as soon
as you commit them to version control. Combine CircleCI with Divshot's [multiple environments](/guides/builds) and you've got
a fantastic way to keep your development processes humming.

## Environment Variable

After selecting your repository and building for the first time, go to project settings by clicking the gear icon in the top right.

First we need to add a new environment variable for authorizing deployment to Divshot. Get your auth token from the CLI:

    divshot auth:token

Go back to CircleCI in your browser. Click the **Environment variables** link under **Tweaks**.

Use `DIVSHOT_TOKEN` for the name. Copy and paste your token in the `Value` field:

<img src="{% asset_path integrations/circleci1.png %}" alt="CircleCI Environment Variables" class="img-responsive">

## YAML Configuration

To deploy to Divshot, you'll need to set up a `circle.yml` file in your project:

```yaml
deployment:
  staging:
    branch: master
    commands:
      - npm install -g divshot-cli
      - divshot push staging --token $DIVSHOT_TOKEN
```

Trigger another build and you should be good to go! Now you've got continuous integration with Divshot.