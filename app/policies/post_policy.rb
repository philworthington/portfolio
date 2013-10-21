class PostPolicy < ApplicationPolicy
  class Scope < Struct.new(:user, :scope)
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(:published => true)
      end
    end
  end

  def create
    @post = Post.new(params[:post])
    authorize @post
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end
end


