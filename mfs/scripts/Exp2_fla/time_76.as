package Exp2_fla
{
   import flash.display.MovieClip;
   
   public dynamic class time_76 extends MovieClip
   {
       
      public function time_76()
      {
         super();
         addFrameScript(0,this.frame1,124,this.frame125);
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame125() : *
      {
         this.alpha = 0;
         this.x = 15000;
      }
   }
}
