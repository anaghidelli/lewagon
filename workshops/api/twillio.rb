require 'twilio-ruby'
account_sid = 'ACc46b2561568269a12543ffefc01e2046'
auth_token = '6b87d3ce8fdfa6b25d07d35ba3044bb1'
client = Twilio::REST::Client.new(account_sid, auth_token)
client.messages.create(
from: '+447752019333',
to: '+447833330619',
body: 'Hi, it is Sam'
)
