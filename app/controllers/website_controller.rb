# frozen_string_literal: true

class WebsiteController < ApplicationController
  def index; end

  def plantsale
    @annuals = Plant.all.where("category = 'Annuals'")
    @perennials = Plant.all.where("category = 'Perennials'")
    @houseplants = Plant.all.where("category = 'Houseplants'")
    @trees = Plant.all.where("category = 'Trees'")
    @shrubs = Plant.all.where("category = 'Shrubs'")
    @succulents = Plant.all.where("category = 'Succulents'")
    @fruits = Plant.all.where("category = 'Fruits'")
    @vegetables = Plant.all.where("category = 'Vegetables'"
  def index
    @positions = Position.all
  end
end
