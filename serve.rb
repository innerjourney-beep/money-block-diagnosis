require 'webrick'

server = WEBrick::HTTPServer.new(
  Port: 3456,
  DocumentRoot: File.expand_path('/Users/mainarui/money-block-diagnosis'),
  Logger: WEBrick::Log.new('/dev/null'),
  AccessLog: []
)

trap('INT') { server.shutdown }
server.start
