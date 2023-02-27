class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    def reviews
        Review.where(product_id: self.id)
    end
    def users
        self.reviews.map do |review|
            review.user
        end
    end
end