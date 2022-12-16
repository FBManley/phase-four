require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PhaseFour
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    # server responds to a request with the Set-Cookie header
    config.load_defaults 7.0
    config.api_only = true
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore 

    config.action_dispatch.cookies_same_site_protection = :strict
  end
end
