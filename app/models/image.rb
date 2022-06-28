class Image < ApplicationRecord
  has_one_attached :image
  mount_uploader :image, ImgUploader
end
