class User < ApplicationRecord

  has_many :reviews
  has_many :pizzaplaces, through: :reviews

end
