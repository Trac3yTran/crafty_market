module ApplicationHelper

    def show_picture(listing)
        if listing.picture.attached?
            return image_tag(listing.picture, {class: 'thumbnail'})
        else
            return image_tag("default.png", {class: 'thumbnail'})
        end
    end 


end
