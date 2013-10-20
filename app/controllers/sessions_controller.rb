class SessionsController < ApplicationController
  def create
    admin = Admin.from_omniauth(env["omniauth.auth"])
    session[:admin_id] = admin.id
    redirect_to root_url
  end

  def destroy
    session[:admin_id] = nil
    redirect_to root_url
  end
end
