class Stop < ActiveRecord::Base

  # TODO: Change this to Active model. We don't store stop data in the database
  TRAM = 1
  ALL = 0
  PAGINATE = 3

  def self.tram_stops_by_lat_lng(lat, lng)
    all_stops_by_lat_lng(lat, lng).select { |k,v| k['result']['transport_type'] == 'tram'}.take(PAGINATE)
  end

  def self.tram_stops_by_addr(addr)
    all_stops_by_addr(addr).select { |k,v| k['result']['transport_type'] == 'tram'}.take(PAGINATE)
  end

  private

  def self.api
    # TODO: Move api key to ENV specific file
    @api ||= PtvTimetable::API.new('1000491', '6958c2fa-05c9-11e5-9cc2-02f9e320053a')
  end

  def self.all_tram_lines(stop_id)
    api.broad_next_departures(Stop::TRAM, stop_id, Stop::ALL)
  end

  def self.all_stops_by_lat_lng(lat, lng)
    lat1, lng1 = Geocoder.coordinates("100 Swanston street, Melbourne")
    api.near_me(lat1,lng1)
  end

  def self.all_stops_by_addr(address)
    lat1, lng1 = Geocoder.coordinates(address)
    api.near_me(lat1,lng1)
  end

  def self.uniq_tram_lines(data)
    stop_id = stop_id(data)
    all_tram_lines(stop_id)['values'].uniq { |line| line_id(line) }
  end

  def self.result(data)
    data['result']
  end

  def self.stop_name(data)
    location_name = result(data)['location_name']
    stop_no =  %q(<label class="label-info label pull-right">) + "Stop " + location_name.split('#').second + "</label>"
    stop_name = location_name.split('#').first
    stop_name + stop_no
  end

  def self.stop_id(data)
    result(data)['stop_id']
  end

  def self.platform(data)
    data['platform']
  end

  def self.direction(data)
    platform(data)['direction']
  end

  def self.direction_name(data)
    direction(data)['direction_name']
  end

  def self.line(data)
    direction(data)['line']
  end

  def self.line_number(data)
    line(data)['line_number']
  end

  def self.line_id(data)
    line(data)['line_id']
  end

  def self.info(data)
    line_number(data) + ' to ' + direction_name(data)
  end
end
