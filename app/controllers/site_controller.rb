class SiteController < ApplicationController
  
  def home
    @today_concerts = Concert.get_concerts_day
  end

end
