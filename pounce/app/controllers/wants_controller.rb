class WantsController < ApplicationController

  # Post route to create a new want
  def create
    get_user
    @product = Product.new(shopstyle_id: params[:shopstyle_id], title: params[:title], description: params[:description], current_price: params[:current_price])
    if @product.save
      @want = Want.new(user_id: @user.id, product_id: @product.id, max_price: params[:max_price], expiration: params[:expiration])
      if @want.save
        redirect_to user_wants_path(@user)
      end
    end
  end

  # Get route to view the want before editing
  def edit
    get_user
    @want = Want.find(params[:want_id])
    @product = Product.where(id: @want.product_id)
  end

  # Updates the want in the database
  def update
    @want = Want.update(max_price: params[:max_price], expiration: params[:expiration])
    if @want.save
      redirect_to user_wants_path(@user)
    end
  end

  # Delete the want
  def destroy
    @want = Want.find(params[:want_id])
    @want.destroy
    redirect_to user_wants_path(@user)
  end

  # Display all wants for a particular user
  def index
    get_user
    @user_wants = Product.where(id: Want.where(user_id: @user.id).pluck(:product_id))
  end

end
