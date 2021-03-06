class User < ApplicationRecord
    has_secure_password
    has_attached_file :avatar, 
    :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
    :url => "/system/:attachment/:id/:basename_:style.:extension",
    :styles => {
      :thumb    => ['100x100#',  :jpg, :quality => 70],
      :preview  => ['480x480#',  :jpg, :quality => 70],
      :large    => ['600>',      :jpg, :quality => 70],
      :retina   => ['1200>',     :jpg, :quality => 30]
    },
    :convert_options => {
      :thumb    => '-set colorspace sRGB -strip',
      :preview  => '-set colorspace sRGB -strip',
      :large    => '-set colorspace sRGB -strip',
      :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
    }

    validates :password, presence: true, length: { minimum: 6 }
    validates :name, :lastname, length: { maximum: 50 }
    validates :age, :tel, :cpf, :sex, :cep, :address, :password, :password_confirmation, presence: true
    validates :email, format: { with:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end