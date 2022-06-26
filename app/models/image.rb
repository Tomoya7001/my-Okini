class Image < ApplicationRecord
  mount_uploader :image, ImgUploader
end
