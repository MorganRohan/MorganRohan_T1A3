#!/bin/bash

#install the bundler gem
gem install bundler

#install the gems required for the app as defined in Gemfile
bundle install
clear


#run the application
ruby bookapp.rb 