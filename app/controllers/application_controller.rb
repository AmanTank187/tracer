class ApplicationController < ActionController::Base
    #Lines 3,7-9 are implemented to permit a username when signing up
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
end
