class RenameResetSentAdColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :reset_sent_ad, :reset_sent_at
  end
end
