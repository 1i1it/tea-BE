#  class Tea
# 	include Mongoid::Document

# 	field :title, type: String
# 	field :body, type: String
# end

class Tea
	include Mongoid::Document

	field :name, type: String
	field :price, type: Integer
	field :category, type: String
	field :caffein_free, type: Boolean
	field :description, type: String
	field :image, type: String
	field :created_at, type: String
end