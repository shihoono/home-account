class AddContentToReports < ActiveRecord::Migration[6.0]
  def change
    add_column :reports, :content, :text
  end
end
