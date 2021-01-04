LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/martinhorvath/com.primebird.graphplayground/main/flightnet_airports.csv' AS row
MERGE (airport:Airport {iata_code: row.iata_code})
  ON CREATE SET airport.name = row.airport, airport.city = row.city, airport.state = row.state, airport.country = row.country, airport.latitude = toFloat(row.latitude), airport.longitude = toFloat(row.longitude);

LOAD CSV WITH HEADERS FROM 'https://github.com/martinhorvath/com.primebird.graphplayground/raw/main/flightnet_flights.csv' AS row
MERGE (flight:Flight {id: row.id})
  ON CREATE SET flight.flight_number = row.flight_number, flight.airline = row.airline, flight.tail_number = row.tail_number, flight.origin_airport = row.origin_airport, flight.destination_airport = row.destination_airport, flight.air_time = row.air_time,flight.departureDate = date(row.year + '-' + row.month + '-' + row.day), flight.departureTime = row.departure_time, flight.departureDate = date(row.year + '-' + row.month + '-' + row.day), flight.arrivalTime = row.arrival_time

MATCH (a:Airport),(f:Flight)
WHERE a.iata_code = f.origin_airport
CREATE (f)-[r:DEPARTING_TO]->(a)
RETURN a,r,f

MATCH (a:Airport),(f:Flight)
WHERE a.iata_code = f.destination_airport
CREATE (f)-[r:ARRIVING_FROM]->(a)
RETURN a,r,f
