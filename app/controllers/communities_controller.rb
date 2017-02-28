class CommunitiesController < ApplicationController
  #index
  def index
    @communities = Community.all
  end

  #show
  def show
    @community = Community.find(params[:id])
  end

  #edit
  def edit
    @community = Community.find(params[:id])
    if current_user.id == 1
    else
      redirect_to community_path(@community)
      flash[:alert] = "Only admins can edit communities!"
    end
  end

  #update
  def update
    @community = Community.find(params[:id])
    @community.update(community_params)
    redirect_to community_path(@community)
  end

  #new
  def new
    @community = Community.new
  end

  #create
  def create
    @community = Community.create!(community_params)
    redirect_to community_path(@community)
  end

  #destroy
  def destroy
    @community = Community.find(params[:id])
    @community.destroy
    redirect_to communities_path
  end

  #Join Community
  def add_membership
    @community = Community.find(params[:id])
    @community.memberships.create!(user_id: current_user.id)
    redirect_to :back
  end

  #Leave Community
  def remove_membership
    @community = Community.find(params[:id])
    @user = current_user
    Membership.find_by(community_id: @community.id, user_id: @user.id).destroy
    redirect_to :back
  end

  private
  def community_params
    params.require(:community).permit(:name, :header)
  end


end
