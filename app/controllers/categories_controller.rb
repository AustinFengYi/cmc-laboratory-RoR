class CategoriesController < ApplicationController
  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @announcements = @category.announcements.order(created_at: :desc) 
  end 
end
