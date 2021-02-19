class Post < ApplicationRecord
    validates :post, presence: true, length: { minimum: 10, maximum: 200 }
    belongs_to :user
end
