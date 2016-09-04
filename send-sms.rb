require 'twilio-ruby'
require 'yaml'

keys = YAML.load_file('keys.yaml')
account_sid = keys['account_sid']
auth_token = keys['auth_token']

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token 

@client.account.messages.create(
  from: '+18622363859',
  to: '+19738689358',
  body: 'My bee is a sexy bee'
)
