class StoriesController < ApplicationController

    #index
    def index
      # @stories = Story.all
      # @communities = Community.all
      @community = Community.find(params[:community_id])
      redirect_to community_path(@community)
    end

    #show
    def show
      @story = Story.find(params[:id])
      @storycomment = Storycomment.new
    end

    #edit
    def edit
      @community = Community.find(params[:community_id])
      @story = Story.find(params[:id])
      if @story.user == current_user
      else
        redirect_to community_story_path(@story)
        flash[:alert] = "Only the author of the story can edit it!"
      end
    end

    #update
    def update
      @community = Community.find(params[:community_id])
      @story = Story.find(params[:id])
      @story.update(story_params.merge(user:current_user))
      redirect_to community_story_path(@community, @story)
    end

    #new
    def new
      @community = Community.find(params[:community_id])
      if current_user
        if @community.memberships.find_by(user_id: current_user.id)
          @story = Story.new
        else
          redirect_to community_path(@community)
        end
      else
        redirect_to community_path(@community)
      end
    end

    #create
    def create
      @community = Community.find(params[:community_id])
      @story = @community.stories.create!(story_params.merge(user: current_user))
      redirect_to community_story_path(@community, @story)
    end

    #destroy
    def destroy
      @community = Community.find(params[:community_id])
      @story = Story.find(params[:id])
      if @story.user == current_user
        @story.destroy
      else
        flash[:alert] = "Only the author of the story can delete it"
      end
      redirect_to community_path(@community)
    end

    private
    def story_params
      params.require(:story).permit(:title, :content, :image)
    end

end
