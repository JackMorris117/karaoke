class Guest

    attr_reader(:name)
    def initialize(name)
        @name = name
    end

    def add_customer_to_room(guest)
        @guests << guest

    end







end