require 'net/http'
require 'uri'
require 'json'

current_valuation = 0
current_karma = 0

arr = ["11","12","13","14","15","16","17","18","19","20","21","22","23","24","25"]


SCHEDULER.every '3s' do
  last_valuation = current_valuation
  last_karma     = current_karma
  current_valuation = rand(100)
  current_karma     = rand(200000)

  send_event('valuation', { current: current_valuation, last: last_valuation })
  send_event('karma', { current: current_karma, last: last_karma })
  send_event('synergy',   { value: 50 })
  send_event('synergy2',   { value: 50+ rand(50)})
  send_event('synergy3',   { value: rand(20)})
  
  arr.cycle{|ittan| kore = ittan
  
 #kore = p arr.pop
 #count = 0
 #count =+
 
 #kore = puts arr[3]
 
 

 
  
  data = [
  { label: "完了タスク",value: 15 }, 
  { label: "岩崎タスク（残り）", value: 65 },
  { label: "水野""タスク（残り）", value: 15 },
  { label: "高綱"+kore+"タスク（残り）", value: 5 },
]

#uri = URI.parse('http://chotakun.ddns.net/otameshi12.txt')
#json = Net::HTTP.get(uri)
#data = JSON.parse(json)
 
send_event('bookmarks_frequency', { value: data })

#a = 'otameshi2.txt'

chosain1 = "http://kazomichan.ddns.net/201501-1"
chosain7 = "http://kazomichan.ddns.net/201501-7"

uri2 = URI.parse(chosain1)
json2 = Net::HTTP.get(uri2)
data2 = JSON.parse(json2)

send_event('mychart1', points: data2)

uri7 = URI.parse(chosain7)
json7 = Net::HTTP.get(uri7)
data7 = JSON.parse(json7)

send_event('mychart7', points: data7)







  }



end