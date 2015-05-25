class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:guest).permit(:first_name, :last_name, :email, :password, :password_confirmation, :username, :image, :sex, :birthday)
  end

  def account_update_params
    params.require(:guest).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :username, :image, :sex, :birthday)
  end
end