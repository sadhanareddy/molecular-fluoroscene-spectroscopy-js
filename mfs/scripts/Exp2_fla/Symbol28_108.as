package Exp2_fla
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   
   public dynamic class Symbol28_108 extends MovieClip
   {
       
      public var pops2:MovieClip;
      
      public var select1:MovieClip;
      
      public var pops3:MovieClip;
      
      public var select2:MovieClip;
      
      public var t1:TextField;
      
      public var ok_btn:SimpleButton;
      
      public var t2:TextField;
      
      public var Ex_mc:MovieClip;
      
      public var pops:MovieClip;
      
      public var s1:TextField;
      
      public var btn1:SimpleButton;
      
      public var s2:TextField;
      
      public var btn2:SimpleButton;
      
      public var s3:TextField;
      
      public var trans:MovieClip;
      
      public var drop_mc:MovieClip;
      
      public var drop:SimpleButton;
      
      public var EM:Boolean;
      
      public var EX:Boolean;
      
      public var forEx:Boolean;
      
      public var forEm:Boolean;
      
      public function Symbol28_108()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function dropopen(param1:MouseEvent) : *
      {
         this.drop_mc.gotoAndPlay(2);
         this.trans.x = 25.45;
      }
      
      public function selectdrop(param1:MouseEvent) : *
      {
         if(this.forEx == true)
         {
            this.forExc();
         }
         else
         {
            trace("Select Excitation");
            this.pops2.alpha = 1;
         }
      }
      
      public function forExc() : *
      {
         this.trans.x = -104.55;
         this.select1.alpha = 1;
         this.select2.alpha = 0;
         this.drop_mc.gotoAndStop(1);
         this.EM = true;
         if(this.EM == true)
         {
            this.Ex_mc.alpha = 0;
            trace("one");
            MovieClip(parent).inst_txt.htmlText = "On the screen, enter the Excitation wavelength: 425 nm, Emission Start Wavelength: 435 nm and Emission End wavelength: 700 nm. Emission Start Wavelength value should be larger than the excitation wavelength. Often the maximum absorbance wavelength is chosen as the excitation wavelength. The Emission End Wavelength value depends on the sample, instrument, etc. One chooses the Excitation Slit (nm) and Emission Slit (nm) values (here 2.5 nm/2.5 nm) and the scan speed value (here \'medium\') also.";
         }
      }
      
      public function selectdrop2(param1:MouseEvent) : *
      {
         if(this.forEx == true)
         {
            this.pops3.alpha = 1;
         }
         else
         {
            this.forEms();
         }
      }
      
      public function forEms() : *
      {
         this.trans.x = -104.55;
         this.select2.alpha = 1;
         this.select1.alpha = 0;
         this.drop_mc.gotoAndStop(1);
         this.EX = true;
         if(this.EX == true)
         {
            this.Ex_mc.alpha = 1;
            trace("two");
            MovieClip(parent).inst_txt.htmlText = "On the screen, enter the Emission wavelength: 515 nm, Excitation Start Wavelength: 300 nm and Excitation End wavelength: 600 nm. One chooses the Excitation Slit (nm) and Emission Slit (nm) values (here 2.5 nm/2.5 nm) and the scan speed value (here \'medium\') also.";
         }
      }
      
      public function ok(param1:MouseEvent) : *
      {
         if(this.Ex_mc.alpha == 1)
         {
            this.forExcitation();
         }
         else
         {
            this.forEmission();
         }
      }
      
      public function forExcitation() : *
      {
         if(this.s1.text == "515" && this.s2.text == "300" && this.s3.text == "600")
         {
            this.forEx = true;
            this.t2.text = "select";
            new Tween(this,"alpha",Strong.easeInOut,1,0,1,true);
            MovieClip(parent).scan2_mc.alpha = 1;
            MovieClip(parent).scan2_mc.x = 443.95;
            MovieClip(parent).scan2_mc.gotoAndStop(1);
            MovieClip(parent).scan2_mc.k2_mc.gotoAndPlay(2);
            this.x = 1500;
            MovieClip(parent).inst_txt.htmlText = "Click on Close button when spectral scan is complete. In real operation, the scan data are stored in the computer. The instrument stores data and therefore asks for the Results File name. One enters a file name to save the data. ";
         }
         else
         {
            this.pops.alpha = 1;
         }
      }
      
      public function forEmission() : *
      {
         if(this.s1.text == "425" && this.s2.text == "435" && this.s3.text == "700")
         {
            this.t1.text = "select";
            new Tween(this,"alpha",Strong.easeInOut,1,0,1,true);
            MovieClip(parent).scan2_mc.alpha = 1;
            MovieClip(parent).scan2_mc.x = 443.95;
            MovieClip(parent).scan2_mc.gotoAndStop(2);
            MovieClip(parent).scan2_mc.k3_mc.gotoAndPlay(2);
            this.x = 1500;
            MovieClip(parent).inst_txt.htmlText = "Click on Close button when spectral scan is complete. In real operation, the scan data are stored in the computer. The instrument stores data and therefore asks for the Results File name. One enters a file name to save the data. ";
         }
         else
         {
            this.pops.alpha = 1;
         }
      }
      
      function frame1() : *
      {
         stop();
         this.pops.mouseEnabled = false;
         this.pops2.mouseEnabled = false;
         this.pops3.mouseEnabled = false;
         this.s1.restrict = "0-9";
         this.s2.restrict = "0-9";
         this.s3.restrict = "0-9";
         this.select2.alpha = 1;
         this.select1.alpha = 0;
         this.drop_mc.gotoAndStop(1);
         MovieClip(parent).inst_txt.htmlText = "On the screen, enter the Emission wavelength: 515 nm, Excitation Start Wavelength: 300 nm and Excitation End wavelength: 600 nm. One chooses the Excitation Slit (nm) and Emission Slit (nm) values (here 2.5 nm/2.5 nm) and the scan speed value (here \'medium\') also.";
         this.trans.x = -104.55;
         this.Ex_mc.alpha = 1;
         this.pops.alpha = 0;
         this.pops2.alpha = 0;
         this.EM = false;
         this.EX = false;
         this.forEx = false;
         this.forEm = false;
         this.drop.addEventListener(MouseEvent.CLICK,this.dropopen);
         this.btn1.addEventListener(MouseEvent.CLICK,this.selectdrop);
         this.btn2.addEventListener(MouseEvent.CLICK,this.selectdrop2);
         this.t1.text = "";
         this.t2.text = "";
         this.ok_btn.addEventListener(MouseEvent.CLICK,this.ok);
      }
   }
}
