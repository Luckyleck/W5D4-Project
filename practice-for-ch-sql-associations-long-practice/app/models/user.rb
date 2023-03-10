# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# student.enrollments
class User < ApplicationRecord
    
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment #'enrollment'

    has_many :enrolled_courses,
        through: :enrollments,
        source: :course


end
