﻿package cisc60.game.enemy {		import flash.display.MovieClip;	import flash.events.*;	import flash.display.Stage;		import cisc60.game.weapon.Bullet;	import cisc60.game.map.DesertMap;	import cisc60.game.enemy.SpawnEnemy;	import cisc60.game.character.Hero;	import cisc60.game.util.ScrollScreen;		public class Enemy extends MovieClip {		public var facing:String;		public var bullets:Array;		private var mrc_stage:Stage;		private var desert_map:DesertMap		public var spawn_position:int		private var hero:Hero;				private var enemy_speed:int;				public function Enemy(mrc_stage, hero, desert_map, bullets, pos_x, pos_y) {			gotoAndStop(1);			facing = "LEFT";			this.x = pos_x;			this.y = pos_y			this.hero = hero;			this.spawn_position = pos_x;			this.bullets = bullets;			this.mrc_stage = mrc_stage;			this.desert_map = desert_map;			this.enemy_speed = 0;								addEventListener(Event.ENTER_FRAME, go);		}				public function go(e:Event){			trace("Enemy Speed: " + this.enemy_speed);						this.enemy_speed *= ScrollScreen.VELOCITY;						if(this.hero.keyboard_controls.key_right){				if(this.hero.x > 399) {					if(this.enemy_speed < ScrollScreen.MAX_SPEED)						this.enemy_speed+=2;							trace("ADD ENEMY SPEED: " + this.enemy_speed);				}			}			else if(this.enemy_speed < 3) 				this.enemy_speed = 0;										this.x -= this.enemy_speed;												trace("enemy position: " + this.x)			if(x >= 540){			} else {				var randNum:int = Math.floor(Math.random() * 1000);				if (randNum >= 50 && randNum < 75)				shoot();			}		}				public function shoot() {			var bullet:Bullet = new Bullet(x, y, facing, "ENEMY");			bullets.push(bullet);			parent.addChild(bullets[bullets.length-1]);		}				public function die() {			removeEventListener(Event.ENTER_FRAME, go);		}	}	}