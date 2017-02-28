class MembershipsController < ApplicationController

  #Join Community
  def add_membership
    @community = Community.find(:id)
    @community.memberships.create!(user: current_user)
    redirect_to :back
  end

  #Leave Community
  def remove_membership
    @community = Community.find(:id)
    @user = current_user
    Membership.find_by(community_id: @post, user: @user).destroy
    redirect_to :back
  end

end
