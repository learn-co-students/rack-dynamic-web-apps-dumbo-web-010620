class Application

  def call(env) # Basic Rack setup. def "call", then a Rack::Response.new initialization. with ___.finish to close out.
    resp = Rack::Response.new
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}, #{num_2}, #{num_3}\n"

    if num_1 == num_2 && num_2 == num_3
      resp.write "You Win" # .write method in Rack allows you to "puts" on the web browser.
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
