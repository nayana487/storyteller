class StoriesController < ApplicationController

    #index
    def index
      @stories = Story.all
      @communities = Community.all
    end

    #show
    def show
      @story = Story.find(params[:id])
    end

    #edit
    def edit
      @story = Story.find(params[:id])
      if @story.user == current_user
      else
        redirect_to community_story_path(@story)
        flash[:alert] = "Only the author of the story can edit it!"
      end
    end

    #update
    def update
      @story = Story.find(params[:id])
      @story.update(story_params.merge(user:current_user))
      redirect_to community_story_path(@story)
    end

    #new
    def new
      @story = Story.new
    end

    #create
    def create
      @story = Story.create!(story_params.merge(user: current_user))
      redirect_to community_story_path(@story)
    end

    #destroy
    def destroy
      @story = Story.find(params[:id])
      if @story.user == current_user
        @story.destroy
      else
        flash[:alert] = "Only the author of the story can delete it"
      end
      redirect_to community_stories_path
    end

    private
    def story_params
      params.require(:post).permit(:title, :content, :image)
    end

end
