class Budget < ActiveRecord::Base
  resourcify
  attr_accessible :amount, :name
end
