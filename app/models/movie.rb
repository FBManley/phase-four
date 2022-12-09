class Movie < ApplicationRecord
        # for Active Record validations -> two arguments: the first is the name of the attribute we want to validate, and the second is a hash of options that will include the details of how to validate it. Use optional helpers like length 
        validates :title, presence: true
        # custom Active Record validations
        validate :genre, :no_scaries
    
        def no_scaries
            if genre.downcase == "horror"
                errors.add(:genre, "no scaries, all my homies hate scaries")
            end
        end
    # instance method to print columns for model
    def summary 
        "#{self.title} #{self.genre} #{self.rating} #{self.would_watch_again}"
    end
    # custom method gathered from Controller
    def title_director
        "#{title}: #{director}"
    end
end
