require 'rubygems'
require 'sys/uname'
include Sys

if Uname.sysname.include? "linux"
  require 'execjs'
  require 'v8' 
end
  



ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
