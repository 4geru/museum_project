require 'active_support'
require 'active_support/core_ext'
require 'net/http'

def api_request(lat = 35.671208, lon = 139.76517, sort_order = '', schedule = '')
   
  # baseのURLを設定
  uri = URI.parse 'http://www.tokyoartbeat.com/list/event_searchNear'
  
  # リクエストの送信
  uri.query = URI.encode_www_form({
    :Latitude => lat,
    :Longitude => lon,
    :MaxResults => 50,
    :Schedule => sort_order,
    :Schedule => schedule,
  })
  res = Net::HTTP.get(uri)
  results = Hash.from_xml(res)
  results['Events']['Event'].map!{ |event|
    venue = event['Venue']
    event.merge!({
      'PlaceName' => venue['Name'],
    }).except!('Venue')
  }
end
