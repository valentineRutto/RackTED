require "erb"
class RackTED
  def call(env)
Rack::Response.new (render("index.html.erb"))
  end
  def render(template)
    path=File.expand("path/to/file")

  end
end
