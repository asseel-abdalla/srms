json.extract! result, :id, :course_name, :student_name, :score, :created_at, :updated_at
json.url result_url(result, format: :json)
