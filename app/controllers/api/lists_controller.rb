class Api::ListsController < ApiController
  before_action :authenticated?
 
  def create
    user = User.find(params[:user_id])
    list = List.new(list_params)
    list.user = user 
    if list.save
      render json: list.to_json 
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
 def update
   list = List.find(params[:id])
   if list.update(list_params)
     render json: list.to_json
   else
     render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
   end
 end
  
  private
  def list_params
    params.require(:list).permit(:name, :permissions, :user_id)
  end
 
end