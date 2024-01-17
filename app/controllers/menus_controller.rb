# frozen_string_literal: true

class MenusController < ApplicationController

  def index
    @products = Product.all

  end
end