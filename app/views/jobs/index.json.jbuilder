json.jobs do

  json.array! @jobs do |job|

    json.id                       job.id
    json.industry                 job.industry
    json.url                      job.url
    json.job_title                job.job_title
    json.job_description          job.job_description
    json.employer_name            job.employer_name
    json.employer_description     job.employer_description
    json.education_requirement    job.education_requirement
    json.years_of_experience      job.years_of_experience
    json.base_salary              job.base_salary
    json.employment_type_id       job.employment_type_id
    json.created_at               job.created_at

  end

end