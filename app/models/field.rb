class Field < ActiveRecord::Base
  has_and_belongs_to_many :internships
  belongs_to :industry
end
