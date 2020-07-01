class HellosController < BotController

  def say_hello
    @profile = get_profile
    send_replies
    step_to state: 'ask_location'
  end

  def ask_colour
    send_replies
    update_session_to state: 'get_colour'
  end

  def get_colour
    send_replies
    if current_message.message == 'Blue'
      step_to state: 'say_boo'
    elsif current_message.message == 'Orange'
      step_to state: 'say_wow'
    else
      step_to state: 'get_colour'
    end
  end

  def say_wow
    send_replies
    step_to flow: 'goodbye', state: 'say_goodbye'
  end

  def say_boo
    send_replies
    step_to flow: 'goodbye', state: 'say_goodbye'
  end

  private

  def get_profile
    fb_profile = Stealth::Services::Facebook::Client.fetch_profile(
      recipient_id: current_user_id
    )
    return fb_profile
  end

end
