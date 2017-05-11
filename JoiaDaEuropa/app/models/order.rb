class Order < ApplicationRecord
  belongs_to :user
  after_initialize :init

  def init
    self.status = "pending"
  end
end
