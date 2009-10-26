class CreateBips < ActiveRecord::Migration
  def self.up
    create_table :bips do |t|
      t.string :group
      t.integer :position
      t.references :clip
      t.references :child
      t.timestamps
    end

    add_index :bips, :group
  end

  def self.down
    drop_table :bips
  end
end
