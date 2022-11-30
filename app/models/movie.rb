class Movie < ApplicationRecord
    # instance method to print columns for model
    def to_s 
        "#{self.title} #{self.genre} #{self.rating} #{self.would_watch_again}"
    end
end
