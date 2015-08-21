require "erb"
class RackTED
  def call(env)
Rack::Response.new (render("index.html.erb"))
  end
  def render(template)
    path=File.expand("../views/#{template}",_FILE_)
      ERB.new(File.read(path)).result(binding)
  end
end
