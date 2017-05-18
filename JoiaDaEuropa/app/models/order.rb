class Order < ApplicationRecord
  belongs_to :user
  after_initialize :init

  has_attached_file :attachment
  validates_attachment_presence :attachment
  validates_attachment_content_type :attachment, :content_type => ['application/pdf', 'application/xlsx','application/vnd.ms-excel','application/xls','application/vnd.openxmlformats-officedocument.wordprocessingml.document',
                                                                   'application/zip',
                                                                   'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                                                                   'application/vnd.ms-excel',
                                                                   'application/xls',
                                                                   'application/xlsx',
                                                                   'application/octet-stream']

  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validate :deadline_cannot_be_in_the_past
  validates :description, length: { minimum: 2, maximum: 400 }
  validates :status, length: {minimum: 7, maximum: 9}

  def init
    if self.status == nil
      self.status = "pending"
    end
  end

  def self.search (search)
    if search
      where(["price LIKE ?", "%#{search}%"])
    else
      all
    end
  end

  def deadline_cannot_be_in_the_past
    if deadline.present? && deadline < Date.tomorrow
      errors.add(:deadline, "Can't be in the past nor present")
    end
  end

end

