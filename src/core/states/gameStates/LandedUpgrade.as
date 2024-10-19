package core.states.gameStates
{
   import core.hud.components.Text;
   import core.hud.components.cargo.Cargo;
   import core.hud.components.techTree.TechTree;
   import core.scene.Game;
   import core.solarSystem.Body;
   
   public class LandedUpgrade extends LandedState
   {
      private var myCargo:Cargo;
      
      private var stopMusic:Boolean = true;
      
      private var techTree:TechTree;
      
      private var shownOffer:Boolean = false;
      
      public function LandedUpgrade(param1:Game, param2:Body)
      {
         super(param1,param2,param2.name);
         me = param1.me;
         myCargo = param1.myCargo;
      }
      
      override public function enter() : void
      {
         var name:Text;
         var description:Text;
         super.enter();
         name = new Text();
         name.text = body.name;
         name.size = 18;
         name.x = 45;
         name.y = 50;
         addChild(name);
         description = new Text(name.x,name.y + name.height + 10);
         description.width = 300;
         description.wordWrap = true;
         description.color = 11184810;
         description.font = "Verdana";
         description.size = 12;
         description.text = "Buy upgrades to improve your current ship.";
         addChild(description);
         techTree = new TechTree(g,400,true);
         techTree.x = 30;
         techTree.y = 120;
         addChild(techTree);
         g.myCargo.reloadCargoFromServer(function():void
         {
            techTree.load();
            loadCompleted();
         });
         g.tutorial.showUpgradeAdvice();
      }
      
      override public function execute() : void
      {
         super.execute();
      }
      
      override public function exit(param1:Function) : void
      {
         techTree.exit();
         super.exit(param1);
      }
   }
}

