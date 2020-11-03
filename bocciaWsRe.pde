import websockets.*;

WebsocketClient wsClient;
String message ;

void setup(){
  size(600,600);
  message = ""; 
  wsClient= new WebsocketClient(this, "ws://blooming-lowlands-94051.herokuapp.com");
  //wsClient= new WebsocketClient(this, "ws://localhost:5000/");
}

void draw(){
  
  background(255);
  fill(0);
  text(message, 20 , 20);
  
}

void webSocketEvent(String receivedMessage){
  
 try{
     println(receivedMessage);
     message += receivedMessage + "\n";
     
 }catch(Exception e){
    e.printStackTrace();
    System.exit(1);
  }
 
}
