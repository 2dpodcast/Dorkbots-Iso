package entities
{
	import dorkbots.dorkbots_iso.entity.Hero;
	import dorkbots.dorkbots_iso.entity.IHero;
	
	public class HeroDorkbot extends Hero implements IHero
	{
		public function HeroDorkbot()
		{
			super();
		}
		
		// Don't need to add 0. This tells the pathfinder to count other numbers as walkable besides 0.
		// use this when you want the hero to walk on nodes that activate other behaviors, such as lava causing damage.
		// you can do the same for enemies.
		// override this method in your projects Hero Class to remove or add walkable node types.
		override protected function setupWalkableList():void
		{
			walkableList = new Vector.<uint>();
			walkableList.push(2);
			walkableList.push(3);
			walkableList.push(4);
		}
	}
}