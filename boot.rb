ENV['RACK_ENV'] ||= 'development'
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)

require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])

DataMapper.setup(:default, ENV['DATABASE_URL'])

libs = Dir.glob(File.expand_path('../lib/**/*.rb', __FILE__))
libs.sort.each(&method(:require))

DataMapper.finalize

require File.expand_path('../app', __FILE__)
