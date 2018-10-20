class Image < ApplicationRecord
	mount_uploader :upload_image, ImageUploader
end