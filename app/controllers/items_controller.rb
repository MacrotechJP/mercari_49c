class ItemsController < ApplicationController

  before_action :search
  def index
    
  end

  def show
    @item = Item.find(params[:id])
    @image = @item.images
    @category = Category.where(item_id:@item.id)
    @user = User.find(@item.seller_id)
  end

  def new
  end

  def destroy
    Category.find_by(item_id:params[:id]).destroy if Category.find_by(item_id:params[:id])
    Image.find_by(item_id:params[:id]).destroy if Image.find_by(item_id:params[:id])
    Item.find(params[:id]).delete
    redirect_to root_path
  end

  def create
    Item.create(name:item_params[:item_name],description:item_params[:item_description],condition:item_params[:item_condition],price:item_params[:item_price],brand:item_params[:item_brand],deliveryfee:item_params[:item_deliveryfee],area:item_params[:item_area],days_to_ship:item_params[:item_days_to_ship],sales_situation:"出品中",likes_count:0,size:item_params[:item_size],deliveryWay:item_params[:item_deliveryWay],seller_id:current_user.id)
    item_params[:file].each do |image|
      Image.create(image:image,item_id:Item.last.id)
    end
    first = Category.create(name:item_params[:item_category_first],item_id:Item.last.id)
    second = first.children.create(name:item_params[:item_category_second][0],item_id:Item.last.id)
    third = second.children.create(name:item_params[:item_category_third][0],item_id:Item.last.id)
  end

  

  private
  def item_params
    attrs = [:item_name,:item_description,:item_condition,:item_price,:item_brand,:item_deliveryfee,:item_area,:item_days_to_ship,:item_sales_situation,:item_size,:item_deliveryWay,:item_category_first,file:[],item_category_second:[],item_category_third:[]]
    params.permit(attrs)
  end

end
