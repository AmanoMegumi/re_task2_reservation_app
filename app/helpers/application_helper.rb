module ApplicationHelper
  def avatar_url(user)
    return user.profile_photo unless user.profile_photo.nil?
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "default_icon.jpeg"
  end
end
