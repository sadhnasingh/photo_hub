class FamilyPic < ApplicationRecord
	mount_uploader :upload_image, ImageUploader
end
