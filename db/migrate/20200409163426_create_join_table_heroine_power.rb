class CreateJoinTableHeroinePower < ActiveRecord::Migration[5.1]
  def change
    create_join_table :heroines, :powers do |t|
      t.belongs_to :heroine
      t.belongs_to :power
    end
  end
end
