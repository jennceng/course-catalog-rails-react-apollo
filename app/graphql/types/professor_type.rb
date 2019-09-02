module Types
  class ProfessorType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :office, String, null: false
    field :title, String, null: false
    field :phone, String, null: true
    field :education, String, null: true
    field :courses, [CourseType], null: false
    
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
