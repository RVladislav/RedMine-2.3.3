class CreateUseranswers < ActiveRecord::Migration
  def change
    create_table :useranswers do |t|

      t.integer :idUsers

      t.integer :idAnswer

      t.belongs_to :users

      t.belongs_to :answers


    end

  end
end
