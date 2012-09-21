#!/usr/bin/ruby
require 'lib/osgb_wgs84'

# Example WGS84 lat/lon to convert
lon = -0.10322
lat = 51.52237

# Set height to 0 if you don't have one
height = 0

osgb36point = OSGB_WGS84::WGS84_to_OSGB36(lat,lon, height)
oslat = osgb36point[0]
oslon = osgb36point[1]
osh = osgb36point[2]

osUKgridPoint = OSGB_WGS84::OSGB36_to_OSNG(oslat,oslon)
easting  = osUKgridPoint[0].round
northing = osUKgridPoint[1].round

gridrefLetters = OSGB_WGS84::OSNG_numbers_to_letters(easting,northing, 8)

puts "WGS84 lat:" + lat.to_s + ", WGS84 lon:" + lon.to_s
puts "http://www.openstreetmap.org/?mlat=" + lat.to_s + "&mlon=" + lon.to_s + "&zoom=16"
puts "\nConverts to:";
puts "OSGB36 lat:" + oslat.to_s + ", OSGB36 lon:" + oslon.to_s
puts "\nConverts to:";
puts "OS Easting:" + easting.to_s + ", OS Northing:" + northing.to_s + "  OS grid ref:" + gridrefLetters
puts "http://streetmap.co.uk/grid/" + easting.to_s + "_" + northing.to_s + "_106"