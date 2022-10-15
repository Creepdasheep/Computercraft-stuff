rednet.open("back")

local id, message = rednet.receive(cmdsend, 5)
if not id then
    printError("No message received")
else
    print(("Computer %d sent message %s"):format(id, message))
end
