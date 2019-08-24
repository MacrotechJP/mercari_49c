class ApplicationController < ActionController::Base
  before_action :basic_auth,:search, if: :production?
  protect_from_forgery with: :exception

  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def search
    @search = Item.ransack(params[:q]) #ransackメソッド推奨
    @search_item = @search.result.page(params[:page]).per(100)
    @search_page = @search_item.current_page
    @search_count = @search.result.count
  end
end
