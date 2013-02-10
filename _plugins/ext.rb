require 'sprockets'
require 'compass'
require 'bootstrap-sass'

require "jekyll-assets"
require "jekyll-assets/compass"

Sprockets.append_path Compass::Frameworks['bootstrap'].templates_directory + '/../vendor/assets/javascripts'
Sprockets.append_path Compass::Frameworks['bootstrap'].templates_directory + '/../vendor/assets/images'