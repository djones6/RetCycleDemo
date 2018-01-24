class Diner {
  let seat: Int
  var left: Diner? = nil

  convenience init(seat: Int) {
    self.init(seat: seat, left: nil)
  }

  init(seat: Int, left: Diner?) {
    self.seat = seat
    self.left = left
  }
}

print("Seating diners...")

for _ in 1...10000 {
  // Table for 6
  let andy = Diner(seat: 1)
  let chris = Diner(seat: 2, left: andy)
  let dave = Diner(seat: 3, left: chris)
  // Seat 4 is empty
  let enrique = Diner(seat: 5, left: nil)
  let helen = Diner(seat: 6, left: enrique)
  andy.left = helen

  // Table for 4
  let ian = Diner(seat: 1)
  let kye = Diner(seat: 2, left: ian)
  let mike = Diner(seat: 3, left: kye) 
  let neil = Diner(seat: 4, left: mike)
  ian.left = neil
}

print("Finished.")

