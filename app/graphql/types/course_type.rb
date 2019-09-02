module Types
  class CourseType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: false
    field :reviews, [ReviewType], null: false
    field :professor, ProfessorType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :average_rating, Float, null: false
    field :number_ratings, Int, null: false
  end
end
