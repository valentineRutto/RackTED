
class RackTED
  def call(env)
  [200,{"content_type"=>"text/plain"},["goodmornin valentine get your shit together okay"]]
  end
end
run RackTED.new
