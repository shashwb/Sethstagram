# this will be the main controller of the application
# will control all of our posts and will hold our initial route
class PostsController < ApplicationController

  def index
    # instance variable that collects all of the posts in the Post model
    # this will allow us to display all of our posts in our index view
    @posts = Post.all
    # now we want ot iterate through all of the posts in the view
    # now that the logic is taken care of

  end

  def new
    # on this view, we will be creating a new Post (based on model)
    @post = Post.new
  end

  # we want this to be an action taken "behind the scenes"
  # we wnat this to save the data in our form to the db
  def create
    # use create method on the Post model
    @post = Post.create(post_params)
    #redirect the user back to the index action
    redirect_to posts_path
  end


  private

  #here we define the exact data we want to accept as parameters
  # in this case, it is IMAGE and CAPTION text.
  def post_params
    params.require(:post).permit(:image, :caption)
  end


end
