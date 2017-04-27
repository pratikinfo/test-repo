require 'logger'
class RebuildCacheJob
  def perform
	puts "job started"
  end

  def failure
  	puts "job failed"
  end

  def success
  	puts "job passed"
  end
end