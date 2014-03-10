json.array!(@job_work_shifts) do |job_work_shift|
  json.extract! job_work_shift, :id, :name, :from, :to
  json.url job_work_shift_url(job_work_shift, format: :json)
end
