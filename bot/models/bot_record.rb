require 'active_record'

class BotRecord < ActiveRecord::Base
  self.abstract_class = true
end
