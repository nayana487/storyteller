class StorycommentsController < ApplicationController

  #show
  def show
    @storycomment = Storycomment.find(params[:id])
  end

  #new
  def new
    @community = Community.find(params[:community_id])
    @story = Story.find(params[:story_id])
    @storycomment = Storycomment.new
  end

  #create
  def create
    @community = Community.find(params[:community_id])
    @story = Story.find(params[:story_id])
    @storycomment = @story.storycomments.create(storycomment_params.merge(user: current_user))
    redirect_to community_story_path(@community, @story)
  end

  #edit
  def edit
    @@community = Community.find(params[:community_id])
    @story = Story.find(params[:story_id])
    @storycomment = Storycomment.find(params[:id])
  end

  #update
  def update
    @community = Community.find(params[:community_id])
    @story = Story.find(params[:story_id])
    @storycomment = Storycomment.find(params[:id])
    @storycomment.update(storycomment_params.merge(user:current_user))
    redirect_to community_story_path(@community, @story)
  end

  #destroy
  def destroy
    @community = Community.find(params[:community_id])
    @story = Story.find(params[:story_id])
    @storycomment = Storycomment.find(params[:id])
    @storycomment.destroy
    redirect_to community_story_path(@community, @story)
  end

  private
  def storycomment_params
    params.require(:storycomment).permit(:content)
  end

end
