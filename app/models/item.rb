class Item < ActiveRecord::Base
  scope :missing, -> { where(type: 'Missing') }
  scope :reported, -> { where(type: 'Reported') }
  #TODO: We can't just return all items
  scope :recent, -> { order(created_at: :desc) }

  belongs_to :user

  def self.types
    %w(Missing Reported)
  end
end
