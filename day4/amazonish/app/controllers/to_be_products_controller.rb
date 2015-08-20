class ProductController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    product_params = params.require(:product).permit([:title, :price, :description])
    @product = Product.new(product_params)
    if @product.save
      render text: "success"
    else
      render :new
    end
  end
end
