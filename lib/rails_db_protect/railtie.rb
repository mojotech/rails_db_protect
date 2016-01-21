require 'rails'

module RailsDbProtect
  class Railtie < Rails::Railtie
    rake_tasks do
      load File.expand_path('../Rakefile', __FILE__)
    end
  end
end