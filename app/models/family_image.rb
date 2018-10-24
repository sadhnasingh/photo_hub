class FamilyImage < ApplicationRecord
	mount_uploader :upload_pic, ImageUploader
end
