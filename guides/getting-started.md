---
layout: hosting
title: Divshot Static Web Hosting Platform - Intro
---

# Divshot Hosting 101

<p class="lead">Divshot is a static web hosting platform. Everything served by Divshot is a static file: HTML, CSS, JS, and images. Static web hosting is great for landing pages, JavaScript applications (like those using AngularJS, EmberJS, or Backbone), blogs, and more. If you aren't familiar with the difference between static hosting and something like Ruby on Rails or PHP, <a href="http://www.staticapps.org/articles/defining-static-web-apps" target="_blank">this article</a> explains the difference.</p>

<div class="alert alert-info"><p><b>Want to skip the explanations?</b> Our <a href="/guides/quick-start">Quick Start Guide</a> gives you the bare minimum to get started.</p></div>

## Platform Overview

Each site you want to host with Divshot is called an **app**. You can create as many apps as you like for free, and each one gets its own unique subdomain on `divshot.io`. For instance, if I named my app `dojo` it would be hosted at `dojo.divshot.io`.

### Environments

Each app has three **environments**: `development`, `staging`, and `production`. You can think of environments as a way to test out a new version of your app before making it public. To visit an environment, just add it's name to the URL, for instance `development.dojo.divshot.io`.

<img src="{% asset_path guides/environments.jpg %}" alt="Divshot Environments" class="img-responsive">

<div class="alert alert-info"><p><b>Note:</b> Each app's primary subdomain (e.g. <code>dojo.divshot.io</code>) and any custom domains assigned to the app are equivalent to its production environment, just served on a global Content Delivery Network (CDN) to make it blazing fast!</p></div>

### Releases

Every time you deploy new code to an app, it creates a new **release**. This allows you to quickly roll back to any previous version of your code as well as **promote** a release from one environment to another (for example, moving a release from staging to production after verifying that everything is working).

<img src="{% asset_path guides/releases.jpg %}" alt="Divshot Releases" class="img-responsive">

<div class="alert alert-info"><p><b>Note:</b> Releases always start with a clean slate. They don't use any files from previous deployments. If you create a release by deploying a single file, only that file will be available on the new release even if you had many before.</p></div>

### Configuration

Each release can be configured using a special `divshot.json` file in your project's directory. This gives you access to Divshot's advanced features such as HTML5 routing, browser cache control, and more. For more information on available options, see the [configuration reference](/guides/configuration).

<img src="{% asset_path guides/configuration.jpg %}" alt="Divshot Configuration" class="img-responsive">

## First Steps

Before you can create and deploy code to the Divshot platform, you'll need to [sign up on Divshot.com](http://www.divshot.com/). Once you have an account you'll be taken to the **dashboard**. From the dashboard you can manage your apps, billing information, and more. For the rest of this guide, however, we'll be using Divshot from the command line.

## Divshot from the Command Line

For developers, the Divshot command line interface (CLI) is the best way to interact with the Divshot platform. With it you can create new apps, deploy existing apps, change application configuration, and more!

### Installing the Divshot CLI

The Divshot CLI is written using Node.js and installed through NPM (the Node Package Manager). If you aren't sure if you have Node.js installed, type `npm` into the terminal. If it outputs `command not found`, you'll need to [install Node.js](https://github.com/joyent/node/wiki/Installation) in order to continue.

Once you have Node.js up and running, install the Divshot CLI with this command:

    npm install -g divshot-cli
    
This will take a minute or two to install. Once complete, you can verify that it's working by running the `divshot` command. This should output some basic usage information for the CLI.

Every time you use the Divshot CLI, type `divshot` followed by a command name and any necessary options. The first command you'll need to run is to login to Divshot:

    divshot login
    
This should open a browser window (or display a URL that you can paste into a browser). Simply login (if you aren't already) and the command-line interface will automatically be authenticated to your account.

### Creating Your First Application

First, you'll need to create a working directory for your new app. Remember that app names must be a valid subdomain, so only letters, numbers, and dashes are allowed.

    mkdir my-app-name
    cd my-app-name
    
Once you're in your new application's directory, you can initialize a new Divshot application by using the `divshot init` command. This will walk you step by step through some basic configuration options for your app, then create a `divshot.json` file and provision your new app.

    $ divshot init
    
    Initiating a new Divshot app
    name: (my-app-name)
    root directory: (current) public
    clean urls: (y/n) y
    error page: (error.html)
    Would you like to create a Divshot.io app from this app?: (y/n) y
    Create app ...
    Success: my-app-name has been created
    
The `root directory` is the folder that will be uploaded to Divshot when you deploy. For instance, if my root directory is `public` (as above) then `my-app-name.divshot.io` will resolve to `public/index.html` after I have deployed.

<div class="alert alert-info"><p><b>Note:</b> We strongly encourage using a subdirectory for your root so that you can put things such as sensitive configuration files or a README in your project directory without accidentally deploying them.</p></div>

The `clean urls` option lets you decide whether or not to drop the `.html` extension from the files on your site. The error page is what your app will display for URLs that don't match any files or routes.

### Deploying Your New Application

Now that you've created your application, it's time to give it a little bit of content and deploy it! We'll just create a simple "Hello World" as an example:

    mkdir public
    echo '<h1>Hello, World</h1>' > public/index.html
    
Remember that we chose `public` as our root directory earlier, so that is what will be deployed. To deploy to the development environment, all you need to do is run `divshot push`:

	$ divshot push
    
    Build created
    Deploying build ...
    Ready to Extract Tape Archive... (spinning up read head and platter)
    Success: Deployed index.html
    Finalizing build ...
    Build finalized
    Releasing build to development ...
    Build released
    Success: Application deployed to development
    Success: You can view your app at: http://development.my-app-name.divshot.io
    
That's all there is to it! If you copy and paste the URL from the success message, you should be able to visit the site and see "Hello, World".

### Promoting to Production

Since everything seems to be working on the development environment, you're now ready to deploy to production! Instead of uploading a new release directly to production, however, we can simply take the existing release on development and copy it to production:

    $ divshot promote development production
    
    Promoting development to production ...
    Success: my-app-name development promoted to production
    
You can promote from any environment to any other, though the most common workflow is to promote from development to staging and staging to production.

<div class="alert alert-info"><p><b>Note:</b> You can deploy to any of the three environments by name, e.g. <code>divshot push staging</code>. We recommend that you only deploy directly to development and staging, and only release to production using the <code>promote</code> command.</p></div>

### Using Your Own Domain Name

Once your application is ready for prime time you'll want to use your own domain name. This is accomplished like so:

    divshot domains:add www.example.com
    
Custom domain names are only available on paid Divshot plans. If you try to add a domain on a free plan, the command-line interface should give you instructions on how to upgrade. You can also upgrade your apps simply by [visiting the dashboard](https://dashboard.divshot.com).

Once you've added the domain name to Divshot, you just need to create a `CNAME` record with your DNS provider linking the appropriate domain to your app's primary subdomain (e.g. `my-app-name.divshot.io`). Once complete, your app will be available from your own domain!