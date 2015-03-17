class RegistrationsController < Devise::RegistrationsController
 
  private
 
  def sign_up_params
    #params.require(:user).permit(:name, :phone, :description, :categories, :is_foundation, :profile_completed?, :email, :password, :password_confirmation, :current_password)
    params.require(:user).permit(:name, :phone, :description, :categories, :is_foundation, :profile_completed?, :email, :password)
end
 
  def account_update_params
    #params.require(:user).permit(:name, :phone, :description, :categories, :is_foundation, :profile_completed?, :email, :password, :password_confirmation, :current_password)
  	params.require(:user).permit(:name, :phone, :description, :categories, :is_foundation, :profile_completed?, :email, :password)
  end
end