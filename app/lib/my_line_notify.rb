class MyLineNofify
  def MyLineNofify.send(message:)
    line_notify = LineNotify.new("nDIEl8zbCfbq4GTz7FtOhsa8i6yvGgVcWv8tUSsdFkp")
    options = {message: message}
    line_notify.ping(options)
  end
end