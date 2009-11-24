# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def yes_no(value)
    if value == true
      image = 'yes.png'
    else
      if value == false
        image = 'no.png'
      else
        image = 'unknown.png'
      end
    end
    image_tag(image)
  end
end
