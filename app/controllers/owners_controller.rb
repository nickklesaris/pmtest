class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to '/owners/new'
      flash[:notice] = "Owner created."
    else
      render 'new'
    end
  end

  def index
    @owners = Owner.all
  end

  private
    def owner_params
      params.require(:owner).permit(:fname, :lname, :email)
    end
end
