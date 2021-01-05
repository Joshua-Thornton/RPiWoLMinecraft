# RPiWoLMinecraft
 Basic scripts to faciliate automated minecraft server booting over the internet. A Raspberry Pi Zero works nicely.
 Not the best implementation of this idea, but it works for what I need it to do.

 # Premise
 A low power device such as a Raspberry Pi sends a wake-on-lan request to another device that launches a game server on boot,
 said game server automatically shuts down when not in use to save power.
 
 The low power device listens for web traffic from the specified port, triggering the script.

# Usage
(This example will be in the context of a minecraft server)

Clone this repo onto your device using ```git clone https://github.com/Joshua-Thornton/RPiWoLMinecraft.git```
```cd RPiWoLMinecraft.git```
Make the script files executable using ```chmod +x start.sh end.sh command.sh```
Edit ```start.sh``` with your preferred text editor and add your port where indicated. E.g port=5000
Portforward the port you specified to your low power device
Edit ```command.sh``` to include your wake on lan command (or whatever other command you want)
Start the script using ```./start.sh```

Now that the script has started, any traffic detected on the specified port will trigger ```command.sh```
In my case, the traffic is created by adding the Raspberry Pi as a seperate server listing in minecraft, as the game will ping the RPi to see if it's online.

Unfortunately, this does mean that players must have 2 server entries, the main server they will actually play on, and the RPi.

You can end the script using ```./end.sh```
