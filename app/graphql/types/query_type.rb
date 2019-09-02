module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :all_courses, [CourseType], null: false

    field :course, CourseType, null: false do
      argument :course_id, ID, required: true, as: :id
    end

    field :professor, ProfessorType, null: false do
      argument :professor_id, ID, required: true, as: :id
    end

    def all_courses
      Course.all
    end

    def course(id:)
      Course.find(id)
    end

    def professor(id:)
      Professor.find(id)
    end
  end
end
