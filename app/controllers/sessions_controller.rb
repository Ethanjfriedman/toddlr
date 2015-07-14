class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: user_params[:username])

    if @user.authenticate(user_params[:password])
      login!(@user)
      redirect_to user_path(@user.id)
    else
      flash[:message] = "Username or Password error, kiddo."
    end
  end

  def destroy
    logout!
    redirect_to new_session_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
