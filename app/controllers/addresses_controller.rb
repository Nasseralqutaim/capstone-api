class AddressesController < ApplicationController
  def index
    @addresses = Address.all
    render template: "addresses/index"
  end
  
  
  def show
    @address = Address.find_by(id: params[:id])
    render template: "addresses/show"
  end

end
