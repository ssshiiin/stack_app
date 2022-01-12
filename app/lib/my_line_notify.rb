class MyLineNofify
  def MyLineNofify.send(message:)
    line_notify = LineNotify.new("kxaa6QEXeKL0NmGawgyJdeMCZNVTfLeNNgTS5efkJZr")
    options = {message: message}
    line_notify.ping(options)
  end
end