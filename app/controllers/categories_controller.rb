class CategoriesController < ApplicationController
  def show
    @categories = Category.order(created_at: :asc)
    @category = Category.find(params[:id])
    @announcements = @category.announcements.order(created_at: :desc) 
  end 
end
