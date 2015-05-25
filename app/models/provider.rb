class Provider < ActiveRecord::Base
  belongs_to :guest

  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.get_provider(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |p|
      p.token = auth.credentials.token
      p.refresh_token = auth.credentials.refresh_token || nil
    end
  end
end
