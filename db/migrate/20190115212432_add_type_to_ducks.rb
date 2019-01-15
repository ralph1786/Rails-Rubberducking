class AddTypeToDucks < ActiveRecord::Migration[5.2]
  def change
    add_column :ducks, :type, :string
  end
end
