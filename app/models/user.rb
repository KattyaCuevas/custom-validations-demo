class User < ApplicationRecord
  validates :name, blacklist: true
end
