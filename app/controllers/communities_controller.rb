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

  private
  def community_params
    params.require(:community).permit(:name, :header)
  end


end
