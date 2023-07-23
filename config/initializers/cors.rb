# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    if Rails.env.production?
      origins ENV.fetch('FRONTEND_URL', '')
    else
      origins '*'
    end
    resource '*', headers: :any, methods: %i[get post patch put delete]
  end
end
