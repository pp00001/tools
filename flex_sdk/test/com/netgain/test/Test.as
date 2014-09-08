package com.netgain.test
{
  public class Test
  {
    public var name:String;
    private var secretValue:Number;

    public function Test(initialName:String="Agus")
    {
      name = initialName;
    }

    public function sayHello():String
    {
      var result:String;
      if (name != null && name.length > 0){
        result = "Hello there, "+name+".";
      }
      else{
        result="Hello there, anonymou";
      }
      return result;
    }
  }
}
