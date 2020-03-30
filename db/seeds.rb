Ticket.destroy_all
Airline.destroy_all

Airline.create({ name: 'United '})
Airline.create({ name: 'Spirit '})
Airline.create({ name: 'Southwest '})

[
    {
        airline: Airline.all.sample,
        seat_number: "A1",
        departure_city: "Houston",
        destination_city: "New York"
    },
    {
        airline: Airline.all.sample,
        seat_number: "B1",
        departure_city: "Dallas",
        destination_city: "San Fransisco"
    },
    {
        airline: Airline.all.sample,
        seat_number: "C1",
        departure_city: "Delaware",
        destination_city: "Paris"
    },
    {
        airline: Airline.all.sample,
        seat_number: "D1",
        departure_city: "Austin",
        destination_city: "Auckland"
    }
].map do |ticket|
    Ticket.create(ticket)
end