class User < ActiveRecord::Base
  scope :reporters, -> { where(type: 'Owner') }
  scope :owners, -> { where(type: 'Reporter') }

  has_many :missing_items, foreign_key:"user_id", class_name: "Item"
  accepts_nested_attributes_for :missing_items

  def self.types
    %w(Owner Reporter)
  end
end
