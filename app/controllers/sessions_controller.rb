class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    #user = User.where(:email => params[:session][:email].downcase).first
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
      #redirect to successful login page (whatever it may be)
    else
      #error
      flash[:danger] = "Invalid email/password combination"
      render 'new'
    end

  end

  def destroy
  end

end
