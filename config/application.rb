require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Shumian
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Beijing'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.autoload_paths += %W(#{config.root}/lib #{config.root}/lib/extras)
    
    # I18n.enforce_available_locales = true
    config.i18n.locale = config.i18n.default_locale = :'zh-CN'
    config.generators.stylesheets = false
    config.generators.javascripts = false

    I18n.enforce_available_locales = false

    config.middleware.insert_after ActionDispatch::ParamsParser, ActionDispatch::XmlParamsParser
  end
end
