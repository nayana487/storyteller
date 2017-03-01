class StorycommentsController < ApplicationController

  def index
    @community = Community.find(params[:community_id])
    @story = Story.find(params[:story_id])
    redirect_to community_story_path(@community, @story)
  end

  #show
  def show
    @community = Community.find(params[:community_id])
    @story = Story.find(params[:story_id])
    redirect_to community_story_path(@community, @story)
  end

  #new
  def new
    # @community = Community.find(params[:community_id])
    # @story = Story.find(params[:story_id])
    # @storycomment = Storycomment.new
    redirect_to community_story_path(@story)
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
    @community = Community.find(params[:community_id])
    @story = Story.find(params[:story_id])
    @storycomment = Storycomment.find(params[:id])
    if current_user
      if current_user == @storycomment.user || current_user.id == 1
      else
        @community = Community.find(params[:community_id])
        @story = Story.find(params[:story_id])
        redirect_to community_story_path(@community, @story)
      end
    else
      @community = Community.find(params[:community_id])
      @story = Story.find(params[:story_id])
      redirect_to community_story_path(@community, @story)
    end
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
    if current_user == @storycomment.user || current_user.id == 1
      @storycomment.destroy
      redirect_to community_story_path(@community, @story)
    else
      redirect_to community_story_path(@community, @story)
    end
  end

  private
  def storycomment_params
    params.require(:storycomment).permit(:content)
  end

end
