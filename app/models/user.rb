class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar,
                    styles: { medium: "300x300>", thumb: "100x100>" },
                    default_url: "/assets/images/:style/missing.png",
                    :url => "/app/assets/images/users/:id/:style_:basename.:extension"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
