# Divshot Docs

This repository contains the documentation guides for Divshot. It is available open source on GitHub to encourage community contribution as well as for a reference if any other companies would like to set up a similar documentation repository.

Most content is in the `/guides` folder.

## Running Locally

    bundle install
    foreman start

Now you should be able to go to `http://localhost:4001` to see the documentation homepage.

## Publishing to S3

Unless you're an employee of Divshot, you can safely ignore this. :)

First, you will need to generate a YAML config file:

    bundle exec jekyll-s3

Now you will need to alter the `_jekyll_s3.yml` config file:

    s3_id: XXXXXXXXXXXXXXXX
    s3_secret: XXXXXXXXXXXXXXXXXX
    s3_bucket: docs.divshot.com

Now when you want to publish, simply run `jekyll-s3` again.

## License (Text Content)

Copyright (c) 2013 Divshot, Inc. Some rights reserved.

Documentation text content licensed under a [Creative Commons Attribution/Sharealike License](http://creativecommons.org/licenses/by-sa/2.0/)

## License (Code)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.