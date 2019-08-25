class SignupController < ApplicationController

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
  end


  def signup5
    @user = User.new
    @address = CustAddresss.new
    
  end

  def signup6
    session[:cfirstname] = address_params[:firstname]
    session[:clastname] = address_params[:lastname]
    session[:cfirstname_kana] = address_params[:firstname_kana]
    session[:clastname_kana] = address_params[:lastname_kana]
    session[:cpostal_code] = address_params[:postal_code]
    session[:cprefecture] = address_params[:prefecture]
    session[:cmunicipality] = address_params[:municipality]
    session[:chouse_number] = address_params[:house_number]
    session[:cbuilding_name] = address_params[:building_name]
    session[:cphone_number] = address_params[:phone_number]
    @user = User.new
    @address = CustAddresss.new
  end

  def signup7
    @user = User.new
    @address = CustAddresss.new
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
      firstname:session[:cfirstname],
      lastname:session[:clastname],
      firstname_kana:session[:cfirstname_kana],
      lastname_kana:session[:clastname_kana],
      postal_code:session[:cpostal_code],
      prefecture:session[:cprefecture],
      municipality:session[:cmunicipality],
      house_number:session[:chouse_number],
      building_name:session[:cbuilding_name],
      phone_number:session[:cphone_number]
    )
    if @user.save
      @address.save
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
    params.require(:cust_addresss).permit(
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
