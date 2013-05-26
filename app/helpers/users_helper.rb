module UsersHelper
  
  #Returns the Gravatar (http://gravatar.com/) for the given user
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    #gravatar_id = Digest::MD5::hexdigest('jeffrey.gunderson@gmail.com')
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png"   
    #gravatar_url = "https://secure.gravatar.com/avatar/0fcc56e6bb5cdee4a4b1f8d1d72e7cec.png"   
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
