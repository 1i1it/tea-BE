
CATEGORIES = ["Green", "Red", "White", "Black"]
TEAS = ["Lotus", "Fruit", "Roibus", "Lemon"]
IMAGES = ["http://f.tqn.com/y/britishfood/1/0/f/0/-/-/tealeaves.jpg", "https://auntpattysporch.files.wordpress.com/2015/09/loose-leaf-tea.jpg", "http://pad1.whstatic.com/images/thumb/f/f7/Store-Loose-Leaf-Tea-Step-1.jpg/aid845114-728px-Store-Loose-Leaf-Tea-Step-1.jpg"]

# product page
get "/one_tea" do
	tea = Tea.where('_id' => params[:_id]).first
	{tea:tea}
end

# homepage
get '/expensive_teas' do 
	teas = Tea.order_by(:price => 'desc').limit(9).to_a
  	{teas:teas}
end 


#products page that displays a list of teas with filters
get '/show_teas' do
		opts = nil
		criteria = {}
		criteria[:name] = {"$regex" => Regexp.new(params[:name], Regexp::IGNORECASE) } if params[:name].present?
		criteria[:caffein_free] = (params[:caffein_free] == 'true') if criteria[:caffein_free]
		criteria[:category] = params['category'].capitalize if params['category']
		teas =  Tea.where(criteria).to_a
		{teas:teas}
end

def seed_data()
	9.times { category = CATEGORIES.sample 
				 Tea.new({
				  _id: nice_id,
				  name: TEAS.sample,
				  price: rand(30).to_i,
				  category: category,
				  caffein_free: true,
				  description: "Great " + category + " tea",
				  image: IMAGES.sample}).save
             }
end


def remove_fake_teas
 	Tea.delete_all
end

