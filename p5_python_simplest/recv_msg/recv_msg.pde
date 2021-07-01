  
import processing.net.*; 

Client myClient; 

Server s;

int dataIn; 
 
void setup() { 
  size(200, 200); 
  // Connect to the local machine at port 5204.
  // This example will not run if you haven't
  // previously started a server on this port.
  myClient = new Client(this, "127.0.0.1", 5204); 
  s = new Server(this, 5204);
} 
 
void draw() { 
  //if (myClient.available() > 0) { 
  //  myClient.write("HELLO! I'm Processing!");
  //} 
  
  Client c = s.available();
  if (c != null) {
    String input = c.readString();
    println(input);
  }
  delay(500);
} 
