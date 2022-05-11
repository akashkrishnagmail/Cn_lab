BEGIN{
count=0
sent1=0;
sent2=0
received=0;
}
{
if($1=="d")
{
 count++;
}
else if($1=="+" && $3==1 && $4==2)
{
 sent1++;
 }
 else if($1=="+" && $3==0 && $4==2)
 {
  sent2++;
  }
  else if($1=="r" && $3==2 && $4==3)
  {
   received++;
  }
 }
 END{
  printf"\n Packet Sent from source node 1 id:%d",sent1;
  printf"\n Packet Sent from source node 2 id:%d",sent2;
  printf"\n Packet Recived:%d",recieved;sent=sent1+sent2;
  printf"\n Packet Delivory Rati:%.2f\n",(received/sent)*100;
  }
