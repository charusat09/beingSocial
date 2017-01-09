Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, "81y438h3oiwj8x", "hyTz8pgwQI6RNdl5",
  scope: 'r_basicprofile',
  fields: ['id', 'first-name', 'last-name', 'location', 'picture-url', 'public-profile-url']

  provider :google_oauth2, "639688811318-klk8u9b1dn51giqk6ruqu0j259gjgs0a.apps.googleusercontent.com", "-5n6-tKIxV3Tis4vLtnRonxg",
    scope: 'profile', image_aspect_ratio: 'square', image_size: 48, access_type: 'online', name: 'google'

  OmniAuth.config.on_failure = Proc.new do |env|
    SessionsController.action(:auth_failure).call(env)
  end
end
