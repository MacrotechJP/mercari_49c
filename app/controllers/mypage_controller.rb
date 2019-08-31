class MypageController < ApplicationController
  before_action :require_sign,:search

  def profile_update
    User.find(current_user.id).update(nickname:update_params[:user_nickname],profile_description:update_params[:user_description])
    redirect_to mypage_profile_path, notice: 'プロフィールが更新されました'
  end

  private
  def require_sign
    unless user_signed_in?
      redirect_to root_path
    end
  end
  def update_params
    attrs = [:user_nickname,:user_description]
    params.permit(attrs)
  end
  def search
    @search = Item.ransack(params[:q]) #ransackメソッド推奨
    @search_item = @search.result.page(params[:page]).per(100)
    @search_page = @search_item.current_page
    @search_count = @search.result.count
  end
end
