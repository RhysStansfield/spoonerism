# Generated by cucumber-sinatra. (2013-11-12 19:13:15 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', './lib/webspooner.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = WebSpooner

class WebSpoonerWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  WebSpoonerWorld.new
end
