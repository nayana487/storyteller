class StorycommentsController < ApplicationController
  #new
  def new
    @story = Story.find(params[:story_id])
    @storycomment = Storycomment.new
  end

  def show
    @storycomment = Storycomment.find(params[:id])
  end

  #create
  def create
    @story = Story.find(params[:story_id])
    @storycomment = @story.storycomments.create(storycomment_params.merge(user: current_user))
    redirect_to community_story_path(@post)
  end

  #edit
  def edit
    @story = Story.find(params[:story_id])
    @storycomment = Storycomment.find(params[:id])
  end

  #update
  def update
    @story = Story.find(params[:story_id])
    @storycomment = Storycomment.find(params[:id])
    @storycomment.update(storycomment_params.merge(user:current_user))
    redirect_to community_story_path(@post)
  end

  #destroy
  def destroy
    @story = Story.find(params[:story_id])
    @storycomment = Storycomment.find(params[:id])
    @storycomment.destroy
    redirect_to community_story_path(@post)
  end

  private
  def storycomment_params
    params.require(:comment).permit(:content)
  end

end
