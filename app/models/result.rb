class Result < ApplicationRecord
    validates :course, :student, :score, presence: true
    validates_uniqueness_of :student_id, scope: [:course_id], message: "already has a grade for that course"
    belongs_to :student
    belongs_to :course
end
