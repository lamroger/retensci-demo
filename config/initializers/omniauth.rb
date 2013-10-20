OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '695138493844611', 'd459d7f0b3e2fc35499d9309cac8f7c6'
end
