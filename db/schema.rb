ActiveRecord::Schema.define(version: 20180606235137) do

  enable_extension "plpgsql"

  create_table "brain_areas", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
