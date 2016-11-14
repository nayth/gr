class Listing < ApplicationRecord
  # Relataionships.
  belongs_to :user

  mount_uploader :image, ListingUploader
end
