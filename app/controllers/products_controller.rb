class ProductsController < ApplicationController
    def index
        @products=Product.all
    end

    def new
        @product=Product.new
    end

    def create
        @product=Product.new(products_params)
        if @product.save
            redirect_to products_path
        else
            render new
        end
    end
    private 
    def products_params
        params.require(:product).permit(:name,:descripton,:price)
    end
end
