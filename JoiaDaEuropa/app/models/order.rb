class Order < ApplicationRecord
  belongs_to :user
  after_initialize :init

  def init
    #Se status for nil, valor padrao sera pendente
    self.status ||= "pending"
  end
end
