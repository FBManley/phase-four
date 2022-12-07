class Movie < ApplicationRecord
    # instance method to print columns for model
    def summary 
        "#{self.title} #{self.genre} #{self.rating} #{self.would_watch_again}"
    end
    # custom method gathered from Controller
    def title_director
        "#{title}: #{director}"
    end
end
