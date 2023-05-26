class CreateDepartamentos < ActiveRecord::Migration[7.0]
  def change
    create_table :departamentos do |t|
      t.string :codigo
      t.string :nome
      t.integer :numero_funcionario

      t.timestamps
    end
  end
end
