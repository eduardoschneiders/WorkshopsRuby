class Categorization < ActiveRecord::Base
  belongs_to :notice
  belongs_to :category
end
