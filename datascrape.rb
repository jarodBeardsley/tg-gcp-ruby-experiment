#!/usr/bin/ruby -w

require 'rest-client'
require 'json'
url = 'https://api.bls.gov/publicAPI/v1/timeseries/data/'
response = RestClient.post(url,
                           {'seriesid' => ['LAUCN040010000000005'],
                            'startyear' => '1995',
                            'endyear'   => '1998'
                           }.to_json,
                           :content_type => 'application/json')
parsed_json = JSON(response)
print(parsed_json)