class ItemsController < ApplicationController

  def index
  end


  def show
  end

  def new
  end

  def create
    Item.create(name:item_params[:item_name],description:item_params[:item_description],condition:item_params[:item_condition],price:item_params[:item_price],brand:item_params[:item_brand],deliveryfee:item_params[:item_deliveryfee],area:item_params[:item_area],days_to_ship:item_params[:item_days_to_ship],sales_situation:"出品中",likes_count:0,size:item_params[:item_size],deliveryWay:item_params[:item_deliveryWay])
    item_params[:file].each do |image|
      Image.create(image:image,item_id:Item.last.id)
    end
    item_params[:item_category_second].each do |seco|
      unless seco == "---"
        item_params[:item_category_third].each do |thir|
          unless thir == "---"
            Category.create(first:item_params[:item_category_first],second:seco,third:thir,item_id:Item.last.id)
          end
        end
      end
    end
    binding.pry
  end

  private
  def item_params
    attrs = [:item_name,:item_description,:item_condition,:item_price,:item_brand,:item_deliveryfee,:item_area,:item_days_to_ship,:item_sales_situation,:item_size,:item_deliveryWay,:item_category_first,file:[],item_category_second:[],item_category_third:[]]
    params.permit(attrs)
  end


end
