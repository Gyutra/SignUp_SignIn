class Product < ApplicationRecord
	has_many :suppliers
	belogs_to :category
end
