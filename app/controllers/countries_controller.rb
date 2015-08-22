class CountriesController < ApplicationController
  def show
    @country = Country.find(params[:id])
    @user = User.find_by(id: params[:user_id])
    @visited_country = VisitedCountry.find_by(user_id: @user.id, country_id: @country.id)
    @albums = @visited_country.albums
  end

  private

  def countries_params
    params.require(:countries).permit(:name)
  end

end
