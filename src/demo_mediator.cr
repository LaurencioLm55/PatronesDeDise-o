require "./patrones_de_diseño"

module DemoMediator
    class ChatDemo
        def self.execute

            chatRoom = Mediator::ChatRoom.new

            luis = Mediator::UserChat.new("Luis", chatRoom)
            jose = Mediator::UserChat.new("Jose", chatRoom)
            maria = Mediator::UserChat.new("Maria", chatRoom)
            ana = Mediator::UserChat.new("Ana", chatRoom)

            chatRoom.addUser(luis)
            chatRoom.addUser(jose)
            chatRoom.addUser(maria)
            chatRoom.addUser(ana)

            luis.sendMessage("Hola a todos")
            jose.sendMessage("Hola")

        end    
    end
end

