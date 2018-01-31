class User < ApplicationRecord
  validates :age, numericality: { greater_than: 0, allow_blank: true }
end
