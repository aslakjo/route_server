class Place < ActiveRecord::Base
  belongs_to :point

  accepts_nested_attributes_for :point
end
