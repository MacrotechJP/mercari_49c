class SignupController < ApplicationController

  def signup

  end

  def signup2
    @user = User.new
  end

  def signup3
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    session[:firstname] = user_params[:firstname]
    session[:lastname] = user_params[:lastname]
    session[:firstname_kana] = user_params[:firstname_kana]
    session[:lastname_kana] = user_params[:lastname_kana]
    session[:birthday] = user_params[:birthday]
    @user = User.new
  end

  def signup4
    binding.pry
  end

  def signup5
  end

  def signup6
  end

  private
  def user_params
    params.require(:user).permit(
      :nickname,
      :email,
      :password,
      :password_confirmation,
      :firstname,
      :lastname,
      :firstname_kana,
      :lastname_kana,
      :birthday
    )
  end
end
