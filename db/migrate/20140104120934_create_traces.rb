class CreateTraces < ActiveRecord::Migration
  def change
    create_table :traces do |t|
      t.text :data

      t.timestamps
    end
  end
end
