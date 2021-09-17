class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :configure_permitted_parameters_edit, if: :devise_controller?
    protected

    

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :email, :avatar])
    end
    def configure_permitted_parameters_edit
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :username, :email, :password, :password_confirmation, :current_password, :avatar) }
    end
    


end
