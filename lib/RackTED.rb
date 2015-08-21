require "erb"
class RackTED 
  def call(env)
      request=Rack::Response.new(env)
      case request.path
      when "/" then 
      Rack::Response.new(render("index.html.erb"))
      else Rack::Response.new(render("Not Found",404))
      end
  end
          
  def render(template)
   path=File.expand_path("../views/#{template}",__FILE__)
      ERB.new(File.read(loc)).result(binding)
  end
end
