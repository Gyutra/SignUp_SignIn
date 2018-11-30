class Supplier < ApplicationRecord
	has_many :vendors
	belongs_to :product
end
