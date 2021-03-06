class GroupsController < ApplicationController
  before_action do
    @groups = Group.all
  end

  def index
    @group = Group.new
  end

  def create
    @group = Group.new(params.require(:group).permit(:group_name))
    @group.save
    render :index
  end
end
