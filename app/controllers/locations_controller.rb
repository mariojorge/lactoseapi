class LocationsController < BaseController
  private
    def location_params
      params.require(:location).permit(:title, :address, :coordinate_x, :coordinate_y)
    end

    def query_params
      params.permit(:title)
    end
end