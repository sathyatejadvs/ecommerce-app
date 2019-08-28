class ProductPresenter
	def initialize(product, template)
		@product = product
		@template = template
	end

	def h
		@template
	end

	def add_to_cart
		h.link_to "ADD TO CART", h.new_user_session_path, class: "btn btn-warning ml-1 add_to_cart"
	end


end