class PagesController < ApplicationController
  def about
  end

  def contact
  end


  def search
    if params[:query].present?
      listing = Listing.search(params[:query])
    else
      listing = Listing.all
    end
  end
 

end

