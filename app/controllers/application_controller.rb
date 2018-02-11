class ApplicationController < ActionController::Base
  before_action :app_setting
  before_action :configure_permitted_parameters, if: :devise_controller?


  def app_setting
    @app_setting = AppSetting.find(1)
  end

  def the_fallback
    flash[:danger] = 'You are not authorized to access this area'
    redirect_back(fallback_location: root_path)
  end 

  def is_admin?
    if !current_user.try(:admin?)
      the_fallback
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:admin])
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:admin])
  end

end
