class Admin < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |admin|
      admin.provider = auth.provider
      admin.uid = auth.uid
      admin.name = auth.info.name
      admin.oauth_token = auth.credentials.token
      admin.oauth_expires_at = Time.at(auth.credentials.expires_at)
      admin.save!
    end
  end
end
