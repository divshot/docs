---
layout: hosting
title: Builds and Environments
---

# Builds and Environments

<p class="lead">Divshot.io works by creating an immutable snapshot of your application when you deploy
it. This is called a <b>build</b>. A build encapsulates both the files for your application
as well as the configuration you specified in your <code>divshot.json</code> file.</p>

Builds are frozen and immutable to give you maximum stability. Once a build is created it
will never be changed, making it simple to roll back to a previous state if something goes
wrong. Remember that routes and other configuration options are also frozen, so you can
change them in a future build without worrying about breaking an old build.

### Environments

Each Divshot.io application comes with three environments: `development`, `staging`, and
`production`. These environments can be accessed by prefixing your application's name as
a subdomain of `divshot.io`. If your app was called `fakeblock` then you could reach 
the staging environment at `http://staging.fakeblock.divshot.io/`. The recommended use
for each environment is:

**development:** any member of the team can deploy to this environment at any time. It
is used to test out experimental features in a production-like environment before they
are ready for prime time.

**staging:** this environment should be considered a "last stop" before production and
can be used to verify that there aren't any bugs or unexpected glitches.

**production:** your live application. Note that production environment has a few special features:



1. It can be aliased to custom domains
2. It is available without an environment prefix, e.g. `http://fakeblock.divshot.io/`
3. It is automatically cached and accelerated by a Content Delivery Network (CDN)

### Deploying to an Environment

Deploying to an environment is as simple as specifying it in the `divshot push` command.
If you don't specify an environment, `development` will be assumed:

    divshot push staging
    
> **Why does it take longer to deploy to production?**  
> Your production environment is hosted on a CDN, so it takes a little extra time for us to purge the old release and update necessary information. This ensures a fast, seamless experience for your end users.
    

#### History

Each deploy is tagged with an auto-incrementing number. This is great because "cool urls don't change".

You can have an immutable link to your application by using release #s in your urls:

    http://v25.my-app-name.production.divshot.io

### Promoting Builds and Rollback

You may want to move a build that is presently in one environment to another. To do this, you
simply use the `divshot promote` command:

    divshot promote [FROM_ENVIRONMENT] [TO_ENVIRONMENT]
    
So if I want to deploy staging to production, I would call:

    divshot promote staging production
    
You can similarly use the `rollback` command to revert an environment to a previous release:

    divshot rollback production
    
This will revert production to the previous release, thereby quickly undoing a faulty deploy.