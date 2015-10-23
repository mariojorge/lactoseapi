class ProductsController < BaseController
  private
    def product_params
      params.require(:product).permit(:title, :category_id, :middle_price)
    end

    def query_params
      params.permit(:category_id, :title)
    end
end