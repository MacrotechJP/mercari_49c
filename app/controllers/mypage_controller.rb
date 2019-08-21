class MypageController < ApplicationController
  before_action :require_sign

  def profile_update

    redirect_to mypage_profile_path
  end

  private
  def require_sign
    unless user_signed_in?
      redirect_to root_path
    end
  end

end
