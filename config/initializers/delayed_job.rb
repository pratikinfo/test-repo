require "delayed_job_sequel"
::Delayed::Worker.backend = :sequel