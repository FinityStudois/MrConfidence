package cisc60.game.map.platform {	import flash.display.MovieClip;	import flash.events.*;	import flash.display.Stage;		import cisc60.game.map.platform.Platform;		public class SpawnPlatform extends MovieClip {				public static function load_level_one_platforms(mrc_stage, hero, desert_map, platforms):void {						/*			var e2:Enemy = new Enemy(mrc_stage, hero, desert_map, bullets, 1405, 285)			var e3:Enemy = new Enemy(mrc_stage, hero, desert_map, bullets, 1800, 285)			var e4:Enemy = new Enemy(mrc_stage, hero, desert_map, bullets, 2400, 285)			var e5:Enemy = new Enemy(mrc_stage, hero, desert_map, bullets, 2500, 240)			var e6:Enemy = new Enemy(mrc_stage, hero, desert_map, bullets, 3200, 285)			var e7:Enemy = new Enemy(mrc_stage, hero, desert_map, bullets, 3300, 260)			var e8:Enemy = new Enemy(mrc_stage, hero, desert_map, bullets, 3800, 250)			var e9:Enemy = new Enemy(mrc_stage, hero, desert_map, bullets, 4000, 250)			var e10:Enemy = new Enemy(mrc_stage, hero, desert_map, bullets, 4400, 260)			var e11:Enemy = new Enemy(mrc_stage, hero, desert_map, bullets, 4600, 380)			var e12:Enemy = new Enemy(mrc_stage, hero, desert_map, bullets, 5000, 340)			*/						/*enemy(Stage, Map, Bullet, x, y)*/			//var p1:Platform = new Platform(mrc_stage, hero, desert_map, 800, 285);			var p2:Platform = new Platform(mrc_stage, hero, desert_map, 1400, 285);			var p3:Platform = new Platform(mrc_stage, hero, desert_map, 1800, 285);			var p4:Platform = new Platform(mrc_stage, hero, desert_map, 2400, 285);			var p5:Platform = new Platform(mrc_stage, hero, desert_map, 2500, 240);			var p6:Platform = new Platform(mrc_stage, hero, desert_map, 3200, 285);			var p7:Platform = new Platform(mrc_stage, hero, desert_map, 3300, 260);			var p8:Platform = new Platform(mrc_stage, hero, desert_map, 3800, 250);			var p9:Platform = new Platform(mrc_stage, hero, desert_map, 4000, 250);			var p10:Platform = new Platform(mrc_stage, hero, desert_map, 4400, 260);			var p11:Platform = new Platform(mrc_stage, hero, desert_map, 4600, 380);			var p12:Platform = new Platform(mrc_stage, hero, desert_map, 5000, 240);//			platforms.push(p1);			platforms.push(p2);			platforms.push(p3);			platforms.push(p4);			platforms.push(p5);			platforms.push(p6);			platforms.push(p7);			platforms.push(p8);			platforms.push(p9);			platforms.push(p10);			//platforms.push(p11);			platforms.push(p12);					}						/*public static function load_level_two_platforms():Array {									}*/	}}