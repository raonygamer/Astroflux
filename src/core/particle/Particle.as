package core.particle
{
   import starling.display.Quad;
   import starling.textures.Texture;
   
   public class Particle extends Quad
   {
      public var ttl:int;
      
      public var totalTtl:int;
      
      public var speed:Number;
      
      public var localPosX:Number = 0;
      
      public var localPosY:Number = 0;
      
      public var startSize:Number;
      
      public var finishSize:Number;
      
      public var startColor:uint;
      
      public var finishColor:uint;
      
      public var startAlpha:Number;
      
      public var finishAlpha:Number;
      
      public var ticks:int = 1;
      
      public function Particle()
      {
         super(1,1);
         touchable = false;
         blendMode = "add";
      }
      
      override public function set texture(param1:Texture) : void
      {
         super.texture = param1;
         readjustSize();
         pivotX = param1.width / 2;
         pivotY = param1.height / 2;
      }
      
      public function draw() : void
      {
      }
   }
}

