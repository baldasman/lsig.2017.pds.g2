class AddAttachmentAttachmentToOrders < ActiveRecord::Migration
  def self.up
    change_table :orders do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :orders, :attachment
  end
end
