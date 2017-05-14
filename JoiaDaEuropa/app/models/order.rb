class Order < ApplicationRecord
  belongs_to :user
  after_initialize :init

  has_attached_file :attachment
  validates_attachment_content_type :attachment, :content_type => ['application/pdf', 'application/xlsx','application/vnd.ms-excel','application/xls','application/vnd.openxmlformats-officedocument.wordprocessingml.document',
                                                                   'application/zip',
                                                                   'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                                                                   'application/vnd.ms-excel',
                                                                   'application/xls',
                                                                   'application/xlsx',
                                                                   'application/octet-stream']
  def init
    if self.status == nil
      self.status = "pending"
    end
  end
end
