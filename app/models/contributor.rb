class Contributor < ApplicationRecord
    mount_uploader :image, ImageUploader

    validates :name, :description, :money, :image, presence: true
end
