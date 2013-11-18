class ProjectsController < ApplicationController
  before_filter :set_project, only: [:show, :edit, :update, :destroy]

  def index
     @projects = Project.all
     @uploader = Project.new.image
     @uploader.success_action_redirect = new_project_url
  end

  def new
     @project = Project.new(key: params[:key])
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Project has been created."
      redirect_to @project
    else
      flash[:notice] = "Project could not be saved"
      render action: "new"
    end
  end

  def show
      @project = Project.find(params[:id])
      @commentable = @project
      @comments = @commentable.comments
      @comment = Comment.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(params[:project])
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_path
  end


private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :technologies_used)
  end

end
