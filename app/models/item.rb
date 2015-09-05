class Item < ActiveRecord::Base
  scope :missing, -> { where(type: 'Missing') }
  scope :reported, -> { where(type: 'Reported') }
  #TODO: We can't just return all items
  scope :recent, -> { order(created_at: :desc) }

  belongs_to :user
  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :picture, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  # before_save :default_values

  def self.types
    %w(Missing Reported)
  end

  # def default_values
    # self.thumbnail ||= 'https://raw.githubusercontent.com/Boo-Hiss/lost-found/master/app/assets/images/floral-wallet-red.jpeg'
  # end
end
