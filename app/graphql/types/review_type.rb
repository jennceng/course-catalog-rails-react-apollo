module Types
  class ReviewType < BaseObject
    field :id, ID, null: false
    field :course, CourseType, null: false
    field :rating, Integer, null: false
    field :body, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
