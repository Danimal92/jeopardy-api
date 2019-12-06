require 'rest-client'

puts array = [(RestClient.get 'http://jservice.io/api/clues', headers = {params: {category: rand(1..10000)}}),
        (RestClient.get 'http://jservice.io/api/clues', headers = {params: {category: rand(1..10000)}}),
        (RestClient.get 'http://jservice.io/api/clues', headers = {params: {category: rand(1..10000)}}),
        (RestClient.get 'http://jservice.io/api/clues', headers = {params: {category: rand(1..10000)}}),
        (RestClient.get 'http://jservice.io/api/clues', headers = {params: {category: rand(1..10000)}}),
        (RestClient.get 'http://jservice.io/api/clues', headers = {params: {category: rand(1..10000)}}),
        (RestClient.get 'http://jservice.io/api/clues', headers = {params: {category: rand(1..10000)}})]