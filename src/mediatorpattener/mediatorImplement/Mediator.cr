module Mediator

    abstract class Chat
        abstract def sendMessageMediator (message : String, user : User)
        abstract def addUser (user : User)
    end

    abstract class User
        property name : String

        def initialize (@name : String, @chat : Chat)
        end 

        abstract def recive (message : String, sender : String)  
        abstract def sendMessage (message : String)
    
    end

    class ChatRoom < Chat
        
        def initialize
            @users = [] of User
        end

        def addUser (user : User)
            @users << user
        end

        def sendMessageMediator (message : String, user : User)
                @users.each do |u|
                next if u == user
                u.recive(message, user.name)
            end
        end

    end

    class UserChat < User

        def sendMessage (message : String)
            puts "#{@name} envia el mensaje: #{message}"
            @chat.sendMessageMediator(message, self)
        end

        def recive(message : String, sender : String)
            puts "#{@name} recibe de #{sender}: #{message}"
        end
    end

end