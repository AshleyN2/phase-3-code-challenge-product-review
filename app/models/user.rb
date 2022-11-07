class User < ActiveRecord::Base

# returns a collection of all the Reviews that the User has given
# returns a collection of all the Products that the User has reviewed
    has_many :reviews
    has_many :products, through: :reviews

# returns the product instance that has the highest star rating from this user
    def favorite_product
        self.reviews.order(:star_rating).last.product
    end

# takes a `Product` (an instance of the `Product` class) and removes _all_ of this user's reviews for that product
# you will have to delete any rows from the `reviews` table associated with this user and the product

    def remove_reviews (product)
        self.reviews.where(product: product).destroy_all
    end
end