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
    session[:birthday] = user_params["birthday(1i)"]+"/"+user_params["birthday(2i)"]+"/"+user_params["birthday(3i)"]
    @user = User.new
  end

  def signup4
    session[:phone_number] = user_params[:phone_number]
    @user = User.new
    @address = CustAddresss.new
  end

  def signup5
    @user = User.new
    @address = CustAddresss.new
    session[:firstname] =      address_params[:firstname]
    session[:lastname] =       address_params[:lastname]
    session[:firstname_kana] = address_params[:firstname_kana]
    session[:lastname_kana] =  address_params[:lastname_kana]
    session[:postal_code] =    address_params[:postal_code]
    session[:prefecture] =     address_params[:prefecture]
    session[:municipality] =   address_params[:municipality]
    session[:house_number] =   address_params[:house_number]
    session[:building_name] =  address_params[:building_name]
    session[:phone_number] =   address_params[:phone_number]
  end

  def signup6
    @address = CustAddresss.new
    @user = User.new
  end

  def signup7
  end

  def create
    @user = User.new(
      nickname: session[:nickname],
      email:    session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      firstname:session[:firstname],
      lastname_kana: session[:lastname],
      firstname_kana: session[:firstname_kana],
      lastname_kana: session[:lastname_kana],
      birthday: session[:birthday],
      phone_number: session[:phone_number]
    )
    @address = CustAddresss.new(
      firstname:session[:firstname],
      lastname:session[:lastname],
      firstname_kana:session[:firstname_kana],
      lastname_kana:session[:lastname_kana],
      postal_code:session[:postal_code],
      prefecture:session[:prefecture],
      municipality:session[:municipality],
      house_number:session[:house_number],
      building_name:session[:building_name],
      phone_number:session[:phone_number]
    )
    if @user.save
      @address.save
      binding.pry
      sign_in @user
      redirect_to signup7_signup_index_path
    else
      redirect_to signup7_signup_index_path
    end
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
      "birthday(1i)",
      "birthday(2i)",
      "birthday(3i)",
      :phone_number
    )
  end

  def address_params
    params.permit(
      :firstname,
      :lastname,
      :firstname_kana,
      :lastname_kana,
      :postal_code,
      :prefecture,
      :municipality,
      :house_number,
      :building_name,
      :phone_number
    )
  end
end
