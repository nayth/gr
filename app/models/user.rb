class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  mount_uploader :avatar, AvatarUploader

  ####################
  #  Relationships  #
 ###################

 has_many :listings

 before_create :assign_fullname
 before_create :join_lon_lat

 ##################
 ## Call Backs ###
 ################

 def join_lon_lat
   self.location = lat.to_s + ',' + lng.to_s
 end

 def assign_fullname
   self.full_name = first_name + ' ' + last_name
 end


end
