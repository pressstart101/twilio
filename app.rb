require 'sinatra'
# require 'twilio-ruby'

post '/message' do
  number = params['From']
  body = params['Body']

  content_type 'text/xml'

  "<Response>
    <Message>
      Hello #{number}. you said: #{body}
    </Message>
  </Response>"
end


# post '/receive_sms' do 
#   content_type 'text/xml'

#   response = Twilio::TwiML::Response.new do |r| 
#     r.Message 'thanks for messaging'
#   end 

#   response.to_xml
# end


# post '/send_sms' do
#   to = params['to']
#   message = params['body']
#   client = Twilio::REST::Client.new(
#     ENV["TWILIO_ACCOUNT_SID"],
#     ENV[TWILIO_AUTH_TOKEN])
#   client.message.create(
#     to: to,
#     from: "+12345678901",
#     body: message
#     )
# end
