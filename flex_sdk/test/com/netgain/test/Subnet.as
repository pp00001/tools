package com.netgain.test
{
  import mx.core.UIComponent;
  import mx.core.Container;
  import mx.controls.Label;
  import mx.containers.Panel;
  import flash.display.Sprite;
  import mx.controls.Alert;

  public class Subnet extends UIComponent
  {
    public function Subnet()
    {
      var box:UIComponent = new UIComponent();
      box.graphics.beginFill(0xff0000);
      box.graphics.drawRect(0, 0, 100, 100);
      box.x = 0;
      box.y = 0;
      addChild(box);
      var lbl:Label = new Label();
      lbl.x = 10;
      lbl.y = 0;
      lbl.text = "dkfadfkd kfdjasf dskfjd sfabc";
      lbl.width = 80;
      lbl.height = 80;
      addChild(lbl);
    }
  }
}
