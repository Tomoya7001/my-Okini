class ImagesController < ApplicationController


private

 def post_params
   params.require(:image).permit(:image)
 end

 def image_params
   params.require(:image).permit(:image)
 end
end
