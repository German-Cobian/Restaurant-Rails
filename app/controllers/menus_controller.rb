class MenusController < ApplicationController
  before_action :set_categories

  def index
    @page = 'menu'
    @products = Product.all
  end

  def search
    query = params[:search]

    results = Product.where('name LIKE ?', "%#{query}%" )
    
    if params[:filter] == 'Select Filter'
      @products = results
    else
      # 'Dairy Free' -> 'Dairy_Free' -> 'dairy_free' -> :dairy_free
      symbol = params[:filter].gsub(/ /, '_').downcase!.to_sym
      # @products = results.where(:dairy_free => true)
      @products = results.where(symbol => true)
    end
    @search_results = @products
    
    respond_to do |format|
      format.html { render partial: 'menus/search_results' } # Render HTML partial
      format.js   # Render JavaScript template (search.js.erb)
    end
  end

  private

  def set_categories
    @categories = Category.all.where(display: true)
  end
end