class Admin::AnnouncementsController < Admin::BaseController
  def index
    @announcements = Announcement.order(created_at: :desc)
    @categories = Category.all
  end

  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = Announcement.new(announcement_params)
    if @announcement.save
      flash[:notice] = "announcement was successfully created"
      redirect_to admin_root_path
    else
      flash.now[:alert] = "announcement was failed to create"
      render :new
    end
  end

  def show
    @announcement = Announcement.find(params[:id])
  end

  def edit
    @announcement = Announcement.find(params[:id])
  end

  def update
    @announcement = Announcement.find(params[:id])
    if @announcement.update(announcement_params)
      flash[:notice] = "announcement was successfully updated"
      redirect_to admin_announcement_path(@announcement)
    else
      flash.now[:alert] = "announcement was failed to update"
      render :edit
    end
  end

  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy
    redirect_to admin_root_path
    flash[:alert]="announcement was deleted"
  end

  private

  def announcement_params
    params.require(:announcement).permit(:title,:date,:description,:category_id)
  end

end
