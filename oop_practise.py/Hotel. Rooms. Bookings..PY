class hotel:
    def __init__(self, name, adress,hotel_type):
        self.name = name
        self.adress = adress
        self.hotel_type = hotel_type
        self.rooms = []
    def add_room(self,room):
        self.rooms.append(room)
    def __str__(self):
        return f"Hotel name is {self.name}"
    
class room:
    def __init__(self, room_count, price , hotel_id = None):
        self.room_count = room_count
        self.price = price
        self.hotel_id =hotel_id
        self.booking = []
    
    def add_booking(self, book):
        self.booking.append(book)
    
class bookings:
    def __init__(self,check_in_date, check_out_date, total_price, guest_name):
        self.check_in_date = check_in_date
        self.check_out_date = check_out_date
        self.total_price = total_price
        self.guest_name = guest_name
    
    def __str__(self):
        return f"Guest name is {self.guest_name} and total price is {self.total}"
