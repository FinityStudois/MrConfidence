﻿package cisc60.game.enemy {		import flash.display.MovieClip;	import flash.events.*;	import cisc60.game.weapon.Bullet;			public class Enemy extends MovieClip {		public var facing:String;		public var bullets:Array;				public function Enemy(bullets) {			gotoAndStop(1);			facing = "LEFT";			this.bullets = bullets;			addEventListener(Event.ENTER_FRAME, go);		}				public function go(e:Event){			if(x >= 540){				x -= 5;			} else {			var randNum:int = Math.floor(Math.random() * 1000);			if (randNum < 50)				x -= 5;			if (randNum >= 50 && randNum < 75)				shoot();			}		}				public function shoot () {			var bullet:Bullet = new Bullet(x, y, facing, "ENEMY");			bullets.push(bullet);			parent.addChild(bullets[bullets.length-1]);		}				public function die() {			removeEventListener(Event.ENTER_FRAME, go);		}	}	}