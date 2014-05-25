class SessionsController < Devise::SessionsController




  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)
    session[:employee_id] = resource.id

      respond_to do |format|
        if employee_signed_in?
          format.html { redirect_to dashboard_path, notice: 'You Signed In' }

        else
          format.html { render action: 'new',alert: "Invalid email/password combination" }
          format.json { render json: @employee.errors, status: :unprocessable_entity }
        end
      end
  end


end
