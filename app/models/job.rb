class Job < ApplicationRecord

  enum :job_type, {
    full_time: 0,
    part_time: 1
  }

  enum :category, {
    manufactoring: 0,
    legal: 1,
    education: 2,
    government: 3,
    sales: 4
  }

end
