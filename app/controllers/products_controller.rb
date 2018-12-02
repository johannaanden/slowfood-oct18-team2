class ProductsController < ApplicationController
    def index
        @products = Product.all
        @categories = Category.all
    end
    def show
        
    end
    def edit
        @product = Product.find(params[:id])
    end
    def update
        @product = Product.find(params[:id])
        @product.update_attributes(product_params)
        redirect_to root_path
    end

    private
    def product_params
        params.require(:product).permit(:name, :description,:price)
    end

  
end
