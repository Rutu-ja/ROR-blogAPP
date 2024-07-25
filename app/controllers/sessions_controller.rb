class SessionsController < ApplicationController
  def new
  end

  def create
    email = params[:email].downcase
    password = params[:password]
    user = User.find_by(email: email)
    
    if user && user.authenticate(password)
      log_in user
      redirect_to root_path  # Redirect to the root path after successful login
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
