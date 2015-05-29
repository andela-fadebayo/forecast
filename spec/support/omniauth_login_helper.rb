def set_valid_google_omniauth
  OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
                                                                         :provider => "google_oauth2",
                                                                         :uid => "123456789",
                                                                         :info => {
                                                                             :name => "Jade Kent",
                                                                             :email => "jadekent@forecast.com",
                                                                             :first_name => "Jade",
                                                                             :last_name => "Kent",
                                                                             :image => "https://lh3.googleusercontent.com/url/photo.jpg"
                                                                         },
                                                                         :credentials => {
                                                                             :token => "token",
                                                                             :refresh_token => "another_token",
                                                                             :expires_at => 1354920555,
                                                                             :expires => true
                                                                         },
                                                                         :extra => {
                                                                             :raw_info => {
                                                                                 :sub => "123456789",
                                                                                 :email => "jadekent@forecast.com",
                                                                                 :email_verified => true,
                                                                                 :name => "Jade Kent",
                                                                                 :given_name => "Jade",
                                                                                 :family_name => "Kent",
                                                                                 :profile => "https://plus.google.com/123456789",
                                                                                 :picture => "https://lh3.googleusercontent.com/url/photo.jpg",
                                                                                 :gender => "male",
                                                                                 :birthday => "0000-06-25",
                                                                                 :locale => "en",
                                                                                 :hd => "company_name.com"
                                                                             },
                                                                             :id_info => {
                                                                                 "iss" => "accounts.google.com",
                                                                                 "at_hash" => "HK6E_P6Dh8Y93mRNtsDB1Q",
                                                                                 "email_verified" => "true",
                                                                                 "sub" => "10769150350006150715113082367",
                                                                                 "azp" => "APP_ID",
                                                                                 "email" => "jsmith@example.com",
                                                                                 "aud" => "APP_ID",
                                                                                 "iat" => 1353601026,
                                                                                 "exp" => 1353604926,
                                                                                 "openid_id" => "https://www.google.com/accounts/o8/id?id=ABCdfdswawerSDFDsfdsfdfjdsf"
                                                                             }
                                                                         }
                                                                     })
end

def set_valid_facebook_omniauth
  OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
                                                                    :provider => 'facebook',
                                                                    :uid => '1234567',
                                                                    :info => {
                                                                        :nickname => 'jbloggs',
                                                                        :email => 'joe@bloggs.com',
                                                                        :name => 'Joe Bloggs',
                                                                        :first_name => 'Joe',
                                                                        :last_name => 'Bloggs',
                                                                        :image => 'http://graph.facebook.com/1234567/picture?type=square',
                                                                        :urls => { :Facebook => 'http://www.facebook.com/jbloggs' },
                                                                        :location => 'Palo Alto, California',
                                                                        :verified => true
                                                                    },
                                                                    :credentials => {
                                                                        :token => 'ABCDEF...',
                                                                        :expires_at => 1321747205,
                                                                        :expires => true
                                                                    },
                                                                    :extra => {
                                                                        :raw_info => {
                                                                            :id => '1234567',
                                                                            :name => 'Joe Bloggs',
                                                                            :first_name => 'Joe',
                                                                            :last_name => 'Bloggs',
                                                                            :link => 'http://www.facebook.com/jbloggs',
                                                                            :username => 'jbloggs',
                                                                            :location => { :id => '123456789', :name => 'Palo Alto, California' },
                                                                            :gender => 'male',
                                                                            :email => 'joe@bloggs.com',
                                                                            :timezone => -8,
                                                                            :locale => 'en_US',
                                                                            :verified => true,
                                                                            :updated_time => '2011-11-11T06:21:03+0000'
                                                                        }
                                                                    }
                                                                })
end

def set_invalid_google_omniauth
  OmniAuth.config.mock_auth[:google_oauth2] = :invalid_credentials
end

def set_invalid_facebook_omniauth
  OmniAuth.config.mock_auth[:facebook] = :invalid_credentials
end