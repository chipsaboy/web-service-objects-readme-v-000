class SearchesController < ApplicationController

  def search
    foursquare = FoursquareService.new
    @resp = foursquare.search(ENV['FOURSQUARE_CLIENT_ID'], ENV['FOURSQUARE_SECRET'], params["zipcode"])
  end

  def friends
    foursquare = FoursquareService.new
    @friends = foursquare.friends(session[:token])
  end

end
