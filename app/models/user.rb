class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def reviews
        Review.where(user_id: self.id)
    end

    def products
        self.reviews.map do |review|
            review.product
        end
    end
end