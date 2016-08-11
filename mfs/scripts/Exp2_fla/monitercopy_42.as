package Exp2_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public dynamic class monitercopy_42 extends MovieClip
   {
       
      public var s_mc:MovieClip;
      
      public var one_btn:SimpleButton;
      
      public var graph_mc:MovieClip;
      
      public var two_btn:SimpleButton;
      
      public var close_btn:SimpleButton;
      
      public var xx:Number;
      
      public function monitercopy_42()
      {
         super();
         addFrameScript(0,this.frame1,39,this.frame40,59,this.frame60);
      }
      
      public function onenter(param1:Event) : *
      {
         this.graph_mc.x = this.graph_mc.x + (this.xx - this.graph_mc.x) / 5;
      }
      
      public function solutiononedata(param1:MouseEvent) : *
      {
         this.xx = -1337.9;
         this.s_mc.x = -272.4;
      }
      
      public function solutiontwodata(param1:MouseEvent) : *
      {
         this.xx = -1841.9;
         this.s_mc.x = -246.9;
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame40() : *
      {
         stop();
         this.xx = -1337.9;
         this.graph_mc.addEventListener(Event.ENTER_FRAME,this.onenter);
         this.one_btn.addEventListener(MouseEvent.CLICK,this.solutiononedata);
         this.two_btn.addEventListener(MouseEvent.CLICK,this.solutiontwodata);
      }
      
      function frame60() : *
      {
         stop();
      }
   }
}
