class ShopperController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:name)
  end

  def search
    if params[:search].blank?
      redirect_to shopper_url and return
    else
      @parameter = params[:search].downcase
      @results = Product.all.where("lower(name) LIKE :search", search: "%#{@parameter}")
    end
  end
end
