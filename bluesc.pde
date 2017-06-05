PImage img;
PFont yugo,yugo2;

  size(1600,900);

//println(PFont.list());

  background(00,115,217);
  img = (loadImage("a.png"));

yugo = createFont("Yu Gothic UI Regular",24,true);
yugo2 = createFont("Yu Gothic UI Regular",16,true);

  image(img,130,240,150,150);



  fill(255);
  textFont(yugo);

  text("問題が発生したため、PCを再起動する必要があります。\nエラー情報を収集しています。自動的に再起動します。\n\n87% 完了",150,100);

  textFont(yugo2);
  text("この問題と可能な解決方法の詳細については、http://windows.com/stopcode を参照してください。\nサポート担当者に連絡する場合は、この情報を伝えて下さい\n停止コード KERNEL SECURITY CHECK FAILURE",300,270);

  int count = 1;

save("/home/kumachan/processing/bluesc/bluesc.jpg");
