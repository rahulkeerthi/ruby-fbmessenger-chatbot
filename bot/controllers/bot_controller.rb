class BotController < Stealth::Controller

  # before_action :current_user

  def route
    if current_message.payload.present?
      handle_payloads
      current_message.payload = nil
      return
    end

    if current_session.present?
      step_to session: current_session
    else
      step_to flow: 'hello', state: 'say_hello'
    end
  end

  private

    def handle_payloads
      case current_message.payload
      when 'developer_restart', 'new_user'
        step_to flow: 'hello', state: 'say_hello'
      when 'something_else'
        step_to flow: 'some_other', state: 'state'
      end
    end

    # def current_user
    #   @current_user ||= begin
    #     user = User.find_by(recipient_id: current_user_id)

    #     unless user.present?
    #       user = persist_current_user
    #     end

    #     user
    #   end
    # end

    # def persist_current_user
    #   fb_profile = Stealth::Services::Facebook::Client.fetch_profile(
    #     recipient_id: current_user_id
    #   )

    #   User.create!(
    #     recipient_id: current_user_id,
    #     first_name: fb_profile['first_name'],
    #     last_name: fb_profile['last_name'],
    #     profile_pic: fb_profile['profile_pic'],
    #   )
    # end

end