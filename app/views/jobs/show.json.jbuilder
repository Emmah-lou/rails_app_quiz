json.job do
  json.extract! @job, :id, :url, :employer_name, :employer_description, :job_title, :job_description, :years_of_experience, :education_requirement, :industry, :base_salary, :employment_type_id, :created_at, :updated_at
end