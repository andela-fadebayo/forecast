class Guests::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def self.callback_for(provider)
    class_eval %Q{
    def #{provider}
      @guest = Guest.fetch_or_store_oauth(request.env["omniauth.auth"], current_guest)

      if @guest.persisted?
        sign_in_and_redirect @guest, :event => :authentication
        set_flash_message(:notice, :success, :kind => "#{provider}".capitalize)
      else
        session["devise.#{provider}_data"] = request.env["omniauth.auth"]
        redirect_to new_guest_registration_url
        flash[:alert] = "Authentication from #{provider} failed. You can create an account with us."
      end
    end
    }
  end

  [:google_oauth2, :facebook].each do |provider|
    callback_for provider
  end
end