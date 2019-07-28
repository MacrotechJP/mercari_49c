class ItemsController < ApplicationController

  def index
  end

  def show
  end

  def create
    binding.pry
    Item.create(name: params[:name],image: params[:image])
  end
end
