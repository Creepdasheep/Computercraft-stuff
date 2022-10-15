
function logo
 print("                                      ")
 print("              @@@@@@@@@@@              ")
 print("           @@@@@@@@@@@@@@@@@@@          ")
 print("         @@@@@@@@@@@@@@@@@@@@@@@        ")
 print("        @ @@@@@@@@@@@@@@@@@@@ @        ")
 print("         @ @@@@@@@@@@@@@@@@@@@ @        ")
 print("          @/@*    @@@@@    ,@@          ")
 print("           @      @@@@@      @          ")
 print("    @      @@@   @@   @@   @@@      @   ")
 print("   @@@@     @@@@@@     @@@@@@     @@@@  ")
 print("        @@@    @@@@@@@@@   ,@@@        ")
 print("             @ @@     @@ @             ")
 print("              @@@@     @@@@             ")
 print("         @@@   @@@@@@@@@@@   @@@        ")
 print("      @@                         @@     ")
 print("                                        ")
end

function app 
    print("Welcome!")
    print("What command would you like to send to all connected computers?")
    local comamnd = read()
    peripheral.find("modem", rednet.open)
    print("Sending command")
    while true do
        rednet.broadcast(command , cmdsend)
        warn("The command you sent %d will loop until restart"):format(command)
        os.sleep(1)
    end
end





codedata = http.get("https://raw.githubusercontent.com/Creepdasheep/Web/main/code.txt")
local codedata = (data.readAll())
code.close()


term.setTextColor( colors.green )
logo()
 term.setTextColor( colors.white )
os.sleep(2)
term.clear()
print("What is the master code?")
local codeask = read("*")
if codeask = codedata then
    term.clear()
    app()
else
    error("Wrong code")
    os.sleep(1)
    os.shutdown()
end
