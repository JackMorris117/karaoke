class Guest

    attr_reader(:name)
    def initialize(name)
        @name = name
    end

    # def move_into_room(room)
    #     guest = who_is_in_room
    #     @guests << guest

    # end
    def add_customer_to_room(guest)
        @guests << guest

    end







end