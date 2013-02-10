# Divshot Documentation

This is a repository containing simple documentation and guides for Divshot.

## Running Locally

    bundle install
    foreman start

Now you should be able to go to `http://localhost:4000` to see the lander.

## Publishing to S3

First, you will need to generate a YAML config file:

    bundle exec jekyll-s3

Now you will need to alter the `_jekyll_s3.yml` config file:

    s3_id: XXXXXXXXXXXXXXXX
    s3_secret: XXXXXXXXXXXXXXXXXX
    s3_bucket: docs.divshot.com

Now when you want to publish, simply run `jekyll-s3` again.