class MenusController < ApplicationController
  before_action :set_categories

  def index
    @page = 'menu'
    @products = Product.all
  end

  def search
    query = params[:search]

    results = Products.where('name LIKE ?', "%#{query}%" )
    if params[:filter] == 'Select Filter'
      @products = results
    else
      symbol = params[:filter].gsub(/ /, '_').downcase!.to_sym
      @products = results.where(symbol => true)
    end
  end

  private

  def set_categories
    @categories = Category.all.where(display: true)
  end
end