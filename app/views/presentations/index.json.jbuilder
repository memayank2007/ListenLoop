json.array!(@presentations) do |presentation|
  json.extract! presentation, :id, :title, :employer_id, :publish
  json.url presentation_url(presentation, format: :json)
end
