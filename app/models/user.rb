class User < ActiveRecord::Base
  has_secure_password

  has_many :buckets
  has_many :topics, through: :buckets
  has_many :elements
  has_many :posts
  has_many :comments


  def slug
    username.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    User.all.find {|u| u.slug == slug}
  end

end
