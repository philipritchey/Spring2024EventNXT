class ApplicationController < ActionController::Base
    # <!--===================-->
    # <!--Devise helper to avoid unauthorized access-->
  #before_action :sign_out_all_users, only: [:force_sign_out]
  #before_action :authenticate_user!
  #skip_before_action :authenticate_user!, only: [:home]
  
  protected

  def after_sign_in_path_for(resource)
    #Redirect to the specific route after sign-in
    if resource.is_a?(User) # Customize based on your Devise model name
      #For example, redirect to the dashboard_path after user signs in
      events_path
    else
      super
    end
  end

  #def forced_sign_out
    #if current_user.present?
      #sign_out(current_user)
      #redirect_to , notice: "All users have been signed out."
    #end
  #end
end
