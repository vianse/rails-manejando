class Photo < ApplicationRecord
	mount_uploader :photo, ImagenUploader
end
