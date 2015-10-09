---
layout: hosting
title: "Continuous Deployment with Codeship"
---

# Continuous Deployment with Codeship

<p class="lead"><a href="https://codeship.com">Codeship</a> is a continuous integration service that allows you to run tests after pushing to a GitHub or BitBucket repository and deploy directly to Divshot.</p>

Integrating with [Codeship](https://codeship.com) allows you to both run tests and build processes for your static applications as soon
as you commit them to version control. Combine Codeship with Divshot's [multiple environments](/guides/builds) and you've got
a fantastic way to keep your development processes humming.

## Environment Variable

After selecting your repository and setting up test commands, go to project settings.

First we need to add a new environment variable for authorizing deployment to Divshot. Get your auth token from the CLI:

    divshot auth:token

Go back to Codeship in your browser. Click the **Environment** tab on the left.

Use `DIVSHOT_TOKEN` for the key. Copy and paste your token in the `Value` field:

<img src="{% asset_path integrations/codeship1.png %}" alt="Codeship Environment Variables" class="img-responsive">

## Deployment Script

To deploy to Divshot, we'll need to use a custom script in Codeship. Click the **Deployment** tab.

Select the **$script** button from the list of deployment methods. Under Deployment commands, use the following script:

    npm install -g divshot-cli
    divshot push staging --token "${DIVSHOT_TOKEN}"

<img src="{% asset_path integrations/codeship2.png %}" alt="Codeship Deployment Script" class="img-responsive">

Remember to change _staging_ in the above script to the environment you want to deploy to. Then click the blue _Save changes_ button to save it. Now you've got continuous integration and deployment with Divshot!
