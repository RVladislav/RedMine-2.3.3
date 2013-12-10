class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|

      t.integer :idQuestions

      t.string :textAnswer

      t.belongs_to :questions


    end

  end
end
