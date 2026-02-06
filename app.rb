require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/app", __FILE__) # Cette ligne aide Ruby à trouver le dossier lib
require 'router'

Router.new.perform