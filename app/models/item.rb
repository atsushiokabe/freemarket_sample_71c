class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category
  belongs_to :brand
  belongs_to :size
  belongs_to_active_hash :ship_from_area
  belongs_to_active_hash :shipping_method
  belongs_to_active_hash :shipping_day
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :condition
  has_many :images

  validates :name,
    presence: true,
    length: {maximum:40}
  validates :description,
    presence: true,
    length: {maximum:1000}
  validates :price,
    presence: true,
    length: {minimum:300,maximum:9999999}
  validates :condition_id,presence: true
  validates :ship_from_area_id,presence: true
  validates :shipping_method_id,presence: true
  validates :shipping_day_id,presence: true
  validates :delivery_fee_id,presence: true

  accepts_nested_attributes_for :images, :category,:brand,:size
end
