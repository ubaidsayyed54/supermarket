module Supermarket
  module Host
    def self.full_url
      if ENV['PORT'].present? && !%w[80 443].include?(ENV['PORT'])
        "#{ENV['PROTOCOL']}://#{ENV['FQDN']}:#{ENV['PORT']}"
      else
        "#{ENV['PROTOCOL']}://#{ENV['FQDN']}"
      end
    end
  end
end
