class Application
  def call(env)
    resp = Rack::Response.new 
    
    if Time.now.strftime("%k:%M") < Time.new()
      resp.write "Good Morning!"
    else 
      resp.write "Goof Afternoon!"
    end
  resp.finish
  end
end