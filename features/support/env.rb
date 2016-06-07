require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'rest-client'

CONFIG_DIR = Pathname.new(File.expand_path('../../../config', __FILE__))
CUCUMBER_ENV = ENV['CUCUMBER_ENV'] || 'development'

module HostConfig
  class << self
    def config
      YAML.load_file(CONFIG_DIR.join('host.yml'))
    end

    def value
      config[CUCUMBER_ENV]
    end
  end
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.javascript_driver = :selenium
  config.app_host = HostConfig.value
end
