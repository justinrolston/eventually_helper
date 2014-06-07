require "eventually_helper/version"

module EventuallyHelper
  def eventually(options = {})
    timeout = options[:timeout] || 10
    interval = options[:interval] || 0.1
    time_limit = Time.now + timeout
    loop do
      begin
        yield
      rescue => error
      end
      return if error.nil?
      raise error if Time.now >= time_limit
      sleep interval
    end
  end
end
