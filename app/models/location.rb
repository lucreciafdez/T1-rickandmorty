class Location < ApplicationRecord
  serialize :residents, Array
end
