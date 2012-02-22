#encoding: UTF-8
class SessionsController < ApplicationController
 skip_before_filter :auth
  def new
    @user = User.new
  end

  def create
    @user = User.auth(params[:user])
    if @user
      session[:user_id] = @user.id
      return redirect_to events_path  
    else
      return redirect_to new_session_path,
      notice: "Usuário ou senha inválidos"
    end
    
  end

  def destroy
    session.delete(:user_id)
    return redirect_to new_session_path
  end
end
