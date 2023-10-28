class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    layout :layou_by_resource

    private

    def layou_by_resource
        "authentication" if devise_controller?
    end
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit :sign_up, keys: %i[name username]
    end

end
