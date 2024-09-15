class Movie < ActiveRecord::Base
   scope :sorted_by, ->(column, direction) { order("#{column} #{direction}") }
end
