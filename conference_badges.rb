def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    names.map do |name|
        badge_maker(name)
    end
end


def assign_rooms(names)
    room = []
    names.each_with_index do |name, index|
    room << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end
    room
end


def printer(attendees)
    batch_badge_creator(attendees).each {|badge| puts badge}
    assign_rooms(attendees).each {|room| puts room}
end