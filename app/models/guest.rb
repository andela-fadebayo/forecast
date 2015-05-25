class Guest < ActiveRecord::Base
  has_many :providers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2, :facebook]

  def self.fetch_or_store_oauth(auth, signed_in_resource=nil)
    data = auth.info
    data_extra = auth.extra.raw_info

    # get the provider from Provider model
    provider = Provider.get_provider(auth)
    guest = provider.guest

    # if guest is nil, find a user with same email or create if not found.
    if guest.nil?
      guest = Guest.where(email: data.email).first_or_create do |g|
        g.email = data.email
        g.password = 'password'
        g.first_name = data.first_name
        g.last_name = data.last_name
        g.image = data.image
        g.gender = data_extra.gender
        g.birthday = data_extra.birthday
      end
    end

    # Associate this user with a provider if no association exist
    if provider.guest != guest
      provider.guest = guest
      provider.save
    end

    guest
  end
end
