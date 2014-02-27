module Job::JobTitlesHelper

  def specification_file_link(job_title)
    return "No File" if job_title.specification.blank?

    "#{link_to(
                  File.basename(job_title.specification.url),
                  job_title.specification.url
                )
      }
      (
       #{( link_to(
          'Remove',
          destroy_specification_job_job_title_path(job_title),
          remote: true, method: :delete, data: { confirm: 'Remove specfication file. Are you sure?' } )
          )
        }
      )
    ".html_safe

  end

  def specification_file_name(job_title)
    name = "Specification"
    if job_title.specification.url
      name += " (#{File.basename(job_title.specification.url.to_s)})"
    end
   name
  end

end
