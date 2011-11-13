class Matter < ActiveRecord::Base
  has_and_belongs_to_many :grids
end
