class ProductsController < ApplicationController
    def index
        @products = Product.all
        @categories = Category.all
    end
    def edit
        @product = Product.find(params[:id])
    end
    def update
        @product = Product.find(params[:id])
        @product.update_attributes(allowed_params)
        redirect_to root_path
    end

    private
    def allowed_params
        params.require(:product).permit(:name, :description,:price)
    end
end
