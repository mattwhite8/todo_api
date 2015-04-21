class Api::ItemsController < ApiController
  before_action :authenticated?
 
  def create
    list = List.find(params[:list_id])
    item = Item.new(item_params)
    item.list = list
    if item.save
      render json: item.to_json
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
 def update
   item = Item.find(params[:id])
   if item.update(item_params)
     render json: item.to_json
   else
     render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
   end
 end
  
  private
  def item_params
    params.require(:item).permit(:title, :body, :complete, :list_id)
  end
  
end