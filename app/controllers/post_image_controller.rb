class PostImageController < ApplicationController

def new 
	@post_iamge = PostImage.new
end 

def create
	@post_iamge = PostImage.new(params[:id])
	@post_image.save
end

private
def post_image_params
params.require(:post_iamge).permit(:image)
end


end
