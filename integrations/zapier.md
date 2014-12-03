---
layout: hosting
title: Event Notifications with Zapier
---

# Event Notifications with Zapier

<p class="lead"><a href="https://zapier.com" target="_blank">Zapier</a> allows you to connect Divshot's
<a href="/guides/webhooks">webhooks</a> to dozens of services and actions for easy event notification.</p>

## Step 1: Creating a Zap

First, you'll need to sign up for a Zapier account and click on **Make a Zap!**
in the top menu bar. Once there, select **Web Hook** as the trigger.

<img class="img-responsive" src="{% asset_path integrations/zapier1.png %}" alt="Web Hook Trigger">

Next, select **Catch Hook** as the trigger type.

<img class="img-responsive" src="{% asset_path integrations/zapier2.png %}" alt="Catch Hook">

For the action, choose the service you'd like to integrate with (such as
Slack or Flowdock) as well as an action type that is appropriate.

## Step 2: Setting Up the Webhook

After clicking **Continue**, Zapier will provide you with a Webhook URL. Copy
this URL to the clipboard.

<img class="img-responsive" src="{% asset_path integrations/zapier3.png %}" alt="Webhook URL">

Now in the Terminal, navigate to your Divshot app's directory and run this command:

    divshot hooks:add <url>

Where `<url>` is the Webhook URL you just copied to the clipboard. Once you've
added the webhook, click **Continue** and proceed to set up the hook. You may
find it useful or necessary to trigger a hook to test the system.

Any deploy to Divshot will trigger a release event, so you can run `divshot push`
and you should be able to see the hook data in Zapier.

## Step 3: Profit!

Once you have the hook data in Zapier, you can use their tools to customize the
notification messaging to your liking. Once the Zap is saved and active, it will
run instantly as soon as new webhook events are triggered!