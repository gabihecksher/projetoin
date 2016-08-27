class Book < ApplicationRecord
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
    belongs_to :author
    belongs_to :category
    belongs_to :publisher 
    validates :name, :price, :category_id, :author_id, :publisher_id, presence: true
    validates :description, length: { maximum: 300, minimum: 10 }
    validates :available_quantity, numericality: true
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
