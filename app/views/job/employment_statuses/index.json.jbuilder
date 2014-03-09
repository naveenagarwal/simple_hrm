json.array!(@job_employment_statuses) do |job_employment_status|
  json.extract! job_employment_status, :id
  json.url job_employment_status_url(job_employment_status, format: :json)
end
