# require_relative 'features/support/api_helper'
# require 'json'
#
# job_name = ARGV[0]
# job_number = ARGV[1]
#
# thumbnail = { 'url' => 'https://pbs.twimg.com/profile_images/662215297378574336/YOOD0ijr_400x400.png'}
#
# fields = []
#
# fields.push({'name' => 'Autors', 'value' => 'Madara'})
# fields.push({'name' => 'Merķis', 'value' => 'kurss'})
# fields.push({'name' => 'Job', 'value' => job_name})
# fields.push({'name' => 'Build number', 'value' => job_number})
#
# embed = []
# embed.push('title' => 'Test title',
#            'colour' => 16007746,
#            'thumbnail' => thumbnail,
#            'fields' => fields)
# payload = {
#     'content' => 'Madara Freimane',
#     'embeds' => embed
# }.to_json
#
# API.post('https://discordapp.com/api/webhooks/463594672992944129/lOA4rGJdI91Q7pp8CcHbAWhfbRLUAunFSlVcO6A11AmmgvzlpHopLk-3xIt116Ef1k06',
#                              headers: {'Content-Type' => 'application/json'},
#                              cookies: {},
#                              payload: payload)
require_relative 'features/support/api_helper'
require 'json'

job_name = ARGV[0]
job_number = ARGV[1]

thumbnail = { 'url' => 'https://pbs.twimg.com/profile_images/662215297378574336/YOOD0ijr_400x400.png'}

fields = []

fields.push({'name' => 'Autors', 'value' => 'Madara'})
fields.push({'name' => 'Merķis', 'value' => 'kurss'})
fields.push({'name' => 'Job', 'value' => job_name})
fields.push({'name' => 'Build number', 'value' => job_number})

embed = []

embed.push('title' => 'Test title',
           'color' => 16007746,
           'thumbnail' => thumbnail,
           'fields' => fields)
payload = {
    'content' => 'Madara Freimane',
    'embeds' => embed
}.to_json

API.post('https://discordapp.com/api/webhooks/463594672992944129/lOA4rGJdI91Q7pp8CcHbAWhfbRLUAunFSlVcO6A11AmmgvzlpHopLk-3xIt116Ef1k06',
         headers: {'Content-Type' => 'application/json'},
         cookies: {},
         payload: payload)

p payload