class Star2mineral < ApplicationRecord
  belongs_to :mineral
  belongs_to :star
  belongs_to :loc
end
