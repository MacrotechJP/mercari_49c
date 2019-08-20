class MypageController < ApplicationController
  before_action :require_sign

  private
  def require_sign
    unless user_signed_in?
      redirect_to root_path
    end
  end
  
end
