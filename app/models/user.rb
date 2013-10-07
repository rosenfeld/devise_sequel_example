class User < Sequel::Model

  plugin :devise
  plugin :validation_class_methods
  plugin :dirty

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def email_changed?
    column_changed? :email
  end
end
