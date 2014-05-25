json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :employee_id, :client_name, :message, :location, :logo
  json.url feedback_url(feedback, format: :json)
end
