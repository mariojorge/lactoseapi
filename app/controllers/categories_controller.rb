class CategoriesController < BaseController
  private
    def category_params
      params.require(:category).permit(:title)
    end

    def query_params
      params.permit(:title)
    end
end