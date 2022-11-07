class Review < ActiveRecord::Base 
# returns the `User` instance for this Review
# returns the `Product` instance for this Review
    belongs_to :user
    belongs_to :product

# should `puts` to the terminal a formatted string
    def print_review
        puts "Review for #{self.product.name} by #{self.user.name}: #{self.star_rating}. #{self.comment}"
    end
end