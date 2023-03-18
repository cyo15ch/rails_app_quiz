json.jobs do
  json.array! @jobs do |job|
    json.id         job.id
    json.content    job.content
    json.completed  job.completed
    json.created_at job.created_at
  end
end