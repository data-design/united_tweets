class Congressmember < ActiveRecord::Base


  def full_name
    first_name + ' ' + last_name
  end

  def image_url
    "http://placekitten.com/#{100 + rand(20)}/#{150 + rand(20)}"
  end

end
