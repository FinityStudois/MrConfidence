﻿package cisc60.game.map.platform {		import flash.display.MovieClip;	import flash.events.*;	import flash.display.Stage;		import cisc60.game.weapon.Bullet;	import cisc60.game.map.DesertMap;	import cisc60.game.enemy.SpawnEnemy;	import cisc60.game.character.Hero;	import cisc60.game.util.ScrollScreen;		public class Platform extends MovieClip {		private var mrc_stage:Stage;		private var desert_map:DesertMap;		public var spawn_position:int;		private var hero:Hero;		private var platform_speed;				public function Platform(mrc_stage, hero, desert_map, pos_x, pos_y) {			this.x = pos_x;			this.y = pos_y			this.hero = hero;			this.spawn_position = pos_x;			this.mrc_stage = mrc_stage;			this.desert_map = desert_map;			this.platform_speed = 0;						this.addEventListener(Event.ENTER_FRAME, go);		}				public function go(e:Event){						this.platform_speed *= ScrollScreen.VELOCITY;						if(this.hero.keyboard_controls.key_right){				if(this.hero.x > 399) {						this.x -= 7;						//						trace("ADD ENEMY SPEED: " + this.enemy_speed);				}			}												}	}}