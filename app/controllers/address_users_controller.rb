class AddressUsersController < ApplicationController
  def create 
    addressuser = AddressUser.new(
      address_id: params[:address_id],
      user_id: params[:user_id]
    )
    addressuser.save
    render json: addressuser.as_json
  end
end 