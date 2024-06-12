module OSC
  class Client

    def initialize(host, port)
      @so = UDPSocket.new
      @so.connect(host, port)
    end

    def send(mesg)
      @so.send(mesg.encode, 0)
    end

    def recvfrom(*args)
      @so.recvfrom(*args)&.first
    end
  end
end