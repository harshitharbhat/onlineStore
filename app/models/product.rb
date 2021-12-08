class Product < ApplicationRecord
  validates(:name, :description, :image, presence: true)
  validates(:price,numericality: {greater_than_or_equal_to: 0.01})
  validates(:name, uniqueness: true )
  validates(:image, allow_blank: true, format: {with:%r{\.(gif|jpg|png|jpeg)\Z}i,message: "file extn must be JPEG,PNG or JPG"})

  has_many :lineitems

  before_destroy (:make_sure_no_line_items)

  def make_sure_no_line_items
    if self.lineitems.empty?
      return true
    else
      return false
    end
  end
end
