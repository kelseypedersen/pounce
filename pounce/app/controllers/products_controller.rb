class ProductsController < ApplicationController

  # Show many items following a search
  def index
    raw_input = params[:search].to_s
    formatted_input = raw_input.gsub(" ", "+")

    @products = HTTParty.get("http://api.shopstyle.com/api/v2/products?pid=uid5001-30368749-95&fts='#{formatted_input}'&offset=0&limit=20")
  end

  # Details about a particular product
  def show
     @product = HTTParty.get("http://api.shopstyle.com/api/v2/products/#{params[:product_id].to_i}?pid=uid5001-30368749-95")
  end

end
