class ChangeColumnLinesId < ActiveRecord::Migration
  def change
    rename_column :stops, :lines_id, :line_id
  end
end
