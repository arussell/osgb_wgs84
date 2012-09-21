Gem::Specification.new do |s|
  s.name        = 'osgb_wgs84'
  s.version     = '0.0.2'
  s.summary     = "Ordnance Survey National Grid to WGS84 co-ordinate converter"
  s.description = "This gem converts Ordnance Survey National Grid co-ordinates to and from WGS84 co-ordinates. It is based on a JavaScript implementation originally by Chris Veness, which was then ported to Ruby by Harry Wood and bundled into a gem by Aaron B. Russell."
  s.authors     = ["Chris Veness", "Harry Wood", "Aaron B. Russell"]
  s.license     = "CC-BY"
  s.email       = 'aaron@unadopted.co.uk'
  s.files       = ["lib/osgb_wgs84.rb"]
  s.homepage    = 'https://github.com/arussell/osgb_wgs84'
end