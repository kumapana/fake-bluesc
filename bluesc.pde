PImage img;
PFont yugo,yugo2;
int progless=0;

void setup(){
frameRate(30);
  fullScreen();

background(00,115,217);
  img = (loadImage("a.png"));

fill(255);

}

void draw(){
if(progless<100){
  if(frameCount%50==0){
  progless+=random(10);
}else{
  progless=progless;
}
}else if(progless>=100){
  progless=100;
}
println(progless);



yugo = createFont("Yu Gothic UI Regular",26,true);
yugo2 = createFont("Yu Gothic UI Regular",18,true);

background(00,117,217);
textFont(yugo);
print(progless);
text("問題が発生したため、PCを再起動する必要があります。\nエラー情報を収集しています。自動的に再起動します。\n\n"+progless+"% 完了",150,100);

textFont(yugo2);
text("この問題と可能な解決方法の詳細については、http://windows.com/stopcode を参照してください。\nサポート担当者に連絡する場合は、この情報を伝えて下さい\n停止コード KERNEL SECURITY CHECK FAILURE",300,270);


save("/home/kumachan/processing/bluesc/bluesc.jpg");
image(img,130,240,150,150);

}
