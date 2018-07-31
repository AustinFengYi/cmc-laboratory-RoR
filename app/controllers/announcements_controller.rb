class AnnouncementsController < ApplicationController
  def index
    @announcements = Announcement.order(created_at: :desc).limit(20)
    render layout: "laboratory-index" 
  end

  def show
    @announcement = Announcement.find(params[:id])
  end

  def announcehomepage
    @announcements = Announcement.order(created_at: :desc)
    @categories = Category.order(created_at: :asc)
  end
end
