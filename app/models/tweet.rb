class Tweet < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments

  validates :text, presence:true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
