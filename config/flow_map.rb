class FlowMap

  include Stealth::Flow

  flow :hello do
    state :say_hello
    state :ask_location, redirects_to: :ask_colour
    state :ask_colour
    state :get_colour, fails_to: :ask_colour
    state :say_wow
    state :say_boo
  end

  flow :goodbye do
    state :say_goodbye
    state :ask_restart
    state :get_restart, fails_to: :ask_restart
    state :say_hello_again
  end

  flow :catch_all do
    state :level1
  end

end
