class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def is_admin?
    redirect_to dashboard_path unless current_employee.admin? if session[:employee_id].present?
  end

  def after_sign_in_path_for(resource)
      request.url + "dashboard"
  end
end
