class RegistrationsController < Devise::RegistrationsController

  def edit
    respond_to do |format|
      format.js
    end
  end

  def update
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
    prev_unconfirmed_email = resource.unconfirmed_email if resource.respond_to?(:unconfirmed_email)

    resource_updated = update_resource(resource, account_update_params)
    yield resource if block_given?
    if resource_updated
      if is_flashing_format?
        flash_key = update_needs_confirmation?(resource, prev_unconfirmed_email) ?
            :update_needs_confirmation : :updated
        set_flash_message :notice, flash_key
      end
      sign_in resource_name, resource, bypass: true
      redirect_to :back
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  private

  def sign_up_params
    params.require(:guest).permit(:first_name, :last_name, :email, :password, :password_confirmation, :username, :image, :sex, :birthday)
  end

  def account_update_params
    params.require(:guest).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :username, :image, :sex, :birthday)
  end
end