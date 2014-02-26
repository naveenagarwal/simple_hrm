module Job::JobTitlesHelper

  def specification_file_link(job_title)
    return "No File" if job_title.specification.blank?

    link_to File.basename(job_title.specification.url),
      job_title.specification.url
  end

  def specification_file_name(job_title)
    name = "Specification"
    if job_title.specification.url
      name += " (#{File.basename(job_title.specification.url.to_s)})"
    end
   name
  end

end
