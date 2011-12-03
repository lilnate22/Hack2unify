class ProjectsController < ApplicationController
  def vote_up
    current_actor.vote_up Project.find(params[:id])
    redirect_to :back
  end

  def vote_down
    current_actor.vote_down Project.find(params[:id])
    redirect_to :back
  end

  # def flag
  #   begin
  #     current_actor.flag(@project = Project.find(params[:id]))
  #     render :nothing => true, :status => 200
  #   rescue
  #     render :nothing => true, :status => 404
  #   end
  # end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(params[:project])
    @project.submitter = current_actor
    if @project.save
      flash[:notice] = "Thanks for creating a new project!"
      redirect_to projects_path
    else
      flash[:error] = @project.errors
      redirect_to projects_path
    end
  end

  def index
  	@projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

end
