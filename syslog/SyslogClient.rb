require 'syslog'

class SyslogClient
  def log(message)
    # $0 is the current script name
    Syslog.open($0, Syslog::LOG_PID | Syslog::LOG_CONS) { |s| s.warning message }
  end
end

# Log a dummy message
sl = SyslogClient.new()
sl.log("dummy from amitd")
