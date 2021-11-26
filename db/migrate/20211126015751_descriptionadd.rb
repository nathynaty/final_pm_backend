class Descriptionadd < ActiveRecord::Migration[6.0]
  def change
    add_column :filepics, :description, :string
  end
end
