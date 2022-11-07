class Product < ActiveRecord::Base

# returns a collection of all the Reviews for the Product
# returns a collection of all the Users who reviewed the Product
    has_many :reviews
    has_many :users
    
# takes a `User` (an instance of the `User` class), a `star_rating` (integer), 
# and a `comment` (string) as arguments, and creates a new `Review` in the database 
# associated with this Product and the User
    def leave_review(user, star_rating, comment)
        Review.create(star_rating: star_rating, comment: comment, product_id: self.id, user_id: user.id)
    end

# should `puts` to the terminal a string representing each review for this product
# each review should be formatted string 
    def print_all_reviews
        self.reviews.each do |review|
            puts "Review for #{review.product.name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
        end
    end

# returns a `float` representing the average star rating for all reviews for this product
    def average_rating
        self.reviews.average(:star_rating).to_f
    end

end