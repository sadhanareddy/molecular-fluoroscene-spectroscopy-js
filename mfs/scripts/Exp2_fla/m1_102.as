package Exp2_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   public dynamic class m1_102 extends MovieClip
   {
       
      public var closed_btn:SimpleButton;
      
      public var cuvv_mc:MovieClip;
      
      public var k2_mc:MovieClip;
      
      public var k3_mc:MovieClip;
      
      public function m1_102()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         stop();
      }
   }
}
