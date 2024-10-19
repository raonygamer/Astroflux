package core.hud.components
{
   import com.greensock.TweenMax;
   import starling.events.TouchEvent;
   
   public class ButtonMissions extends ButtonHud
   {
      private var tween:TweenMax;
      
      public function ButtonMissions(param1:Function)
      {
         super(param1,"button_missions.png");
         hintNewContainer.x = -hintNewContainer.width / 2;
      }
      
      override public function click(param1:TouchEvent = null) : void
      {
         super.click(param1);
         if(tween != null)
         {
            tween.kill();
            tween = null;
         }
         alpha = 1;
      }
      
      public function show() : void
      {
         visible = true;
      }
      
      public function hide() : void
      {
         if(tween != null)
         {
            tween.kill();
         }
         alpha = 1;
         visible = false;
      }
      
      public function hintFinished() : void
      {
         hintNewContainer.visible = true;
         fadeInOut();
      }
      
      private function fadeInOut() : void
      {
         if(tween != null)
         {
            tween.kill();
         }
         alpha = 1;
      }
      
      override public function dispose() : void
      {
         if(tween != null)
         {
            tween.kill();
         }
         super.dispose();
      }
   }
}

