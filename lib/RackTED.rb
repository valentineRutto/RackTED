
class RackTED
  def call(env)
Rack::Response.new (render("index.html.erb"))
  end
end
