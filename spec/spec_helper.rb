$: << File.join(File.dirname(__FILE__), '..', 'lib')
$: << File.join(File.dirname(__FILE__))

require 'rubygems'

require 'activerecord'

require 'spec'
require 'spec/autorun'
require 'rr'

# idea is that we'll pass in different backends from rake task
# (spec/activerecord/ exists, /datamapper, /mongoid, etc. would need to be created)
# and then whole suite would run against them
require 'activerecord/models'

require 'factory_girl'

Spec::Runner.configure do |config|
  config.mock_with RR::Adapters::Rspec
end
