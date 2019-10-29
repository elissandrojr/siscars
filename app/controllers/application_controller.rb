class ApplicationController < ActionController::Base
    before_action :authenticate_usuario!
    layout :layout_by
  
    protected
  
    def layout_by
      if devise_controller? && resource_class == Usuario
        'application_devise'
      else
        'application'
      end
    end
end
