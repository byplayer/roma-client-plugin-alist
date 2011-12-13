# -*- coding: utf-8 -*-
require 'rspec'

$:.unshift File.expand_path(File.join('..', 'lib'), File.dirname(__FILE__))
Dir[File.dirname(__FILE__) + "/supports/**/*.rb"].each {|f| require f}

require 'roma-client-plugin-alist'

RSpec.configure do |config|
  config.mock_with :rr
end
