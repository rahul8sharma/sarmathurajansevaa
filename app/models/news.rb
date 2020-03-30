class News < ApplicationRecord
    mount_uploader :image, ImageUploader

    validates :name, :description, :link, :image, presence: true
end
