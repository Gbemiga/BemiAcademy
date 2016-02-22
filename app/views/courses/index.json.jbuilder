json.array!(@courses) do |course|
  json.extract! course, :id, :name, :date_added, :picture, :description
  json.url course_url(course, format: :json)
end
