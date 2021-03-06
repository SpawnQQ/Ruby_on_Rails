class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :estadisica
  has_many :enfrentamiento


  validates :user_name, uniqueness: {case_sensitive: false,message: " El nombre de usuario ya esta registrado"}
  validate :confirmacion
  def confirmacion
  	if (self.password != self.pass)
  		errors.add(:pass,"")
  		errors.add(:password,"Las contraseñas, no coinciden")
  	end	
  end
end
