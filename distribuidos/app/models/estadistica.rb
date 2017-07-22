class Estadistica < ActiveRecord::Base
	belongs_to :user
	validates :user_id, uniqueness: {case_sensitive: false ,message: " El usuario no se registró"}
end
