class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.string :from
      t.string :message

      t.timestamps
    end
  end
end
