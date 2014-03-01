json.array!(@job_salary_components) do |job_salary_component|
  json.extract! job_salary_component, :id
  json.url job_salary_component_url(job_salary_component, format: :json)
end
