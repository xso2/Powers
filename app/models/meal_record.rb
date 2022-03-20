class MealRecord < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :meal_time
  
  belongs_to :user
  has_one_attached :image

  validates :text, presence: true, unless: :was_attached?
  validates :meal_time_id, numericality: { other_than: 1 } 


  def was_attached?
    self.image.attached?
  end
end
