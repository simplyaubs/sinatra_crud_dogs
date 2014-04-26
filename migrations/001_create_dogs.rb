Sequel.migration do
  up do
    create_table(:dogs) do
      primary_key :id
      String :name, :null=>false
      String :breed
      Integer :puppies
    end
  end

  down do
    drop_table(:dogs) 
  end
end