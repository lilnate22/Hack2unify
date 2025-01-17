class ProjectMembershipsController < ApplicationController
  # GET /project_memberships
  # GET /project_memberships.json
  def index
    @project_memberships = ProjectMembership.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_memberships }
    end
  end

  # GET /project_memberships/1
  # GET /project_memberships/1.json
  def show
    @project_membership = ProjectMembership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_membership }
    end
  end

  # GET /project_memberships/new
  # GET /project_memberships/new.json
  def new
    @project_membership = ProjectMembership.new

    @project_membership.project_id = params[:project_id]
    @project_membership.actor_id = current_actor.id
    @project_membership.save

    redirect_to :back
  end

  # GET /project_memberships/1/edit
  def edit
    @project_membership = ProjectMembership.find(params[:id])
  end

  # POST /project_memberships
  # POST /project_memberships.json
  def create
    @project_membership = ProjectMembership.new

    @project_membership.project_id = params[:project_id]
    @project_membership.actor_id = current_actor.id
    @project_membership.save

    redirect_to projects_path
  end

  # PUT /project_memberships/1
  # PUT /project_memberships/1.json
  def update
    @project_membership = ProjectMembership.find(params[:id])

    respond_to do |format|
      if @project_membership.update_attributes(params[:project_membership])
        format.html { redirect_to @project_membership, notice: 'Project membership was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_memberships/1
  # DELETE /project_memberships/1.json
  def destroy
    @project_membership = ProjectMembership.find(params[:id])
    @project_membership.destroy

    respond_to do |format|
      format.html { redirect_to project_memberships_url }
      format.json { head :ok }
    end
  end
end
