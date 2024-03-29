require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Jigsaw
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.time_zone = 'Eastern Time (US & Canada)'
    config.middleware.insert(0, Rack::ReverseProxy) do
      reverse_proxy_options preserve_host: true
      reverse_proxy '/blog', 'https://jigsawblog.jigsawlabs.io/blog/'
      reverse_proxy '/wiki', 'https://www.wikipedia.org/'
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
