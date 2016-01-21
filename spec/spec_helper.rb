$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rails_db_protect'
require 'rake'

require 'support/rails.rb'
require 'support/activesupport-stringinquirer.rb'
load 'support/Rakefile'
load 'rails_db_protect/Rakefile'
