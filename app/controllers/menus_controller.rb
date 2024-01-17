# frozen_string_literal: true

class MenusController < ApplicationController

  def index
    @page = 'menu'
    @products = Product.all

  end
end