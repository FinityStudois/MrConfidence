﻿package cisc60.game.map {		import flash.display.MovieClip;	import flash.display.Stage;	import flash.events.Event;		import cisc60.game.character.Hero;	import cisc60.game.util.ScrollScreen;		public class DesertMap extends MovieClip {				public var hero:Hero;		public var mrc_stage:Stage;		public var map_speed;				public function DesertMap(mrc_stage:Stage, hero:Hero) {			this.x = 1;			this.mrc_stage = mrc_stage;			this.hero = hero;			this.map_speed = 0;						this.mrc_stage.addEventListener(Event.ENTER_FRAME, update_map_position);		}				private function update_map_position(e:Event):void {//			trace("map position: " + this.x);			//trace("map position: " + this.x);			this.map_speed *= ScrollScreen.VELOCITY;									if(this.hero.keyboard_controls.key_right){				if(this.hero.x > 399) {					if(this.map_speed > - ScrollScreen.MAX_SPEED) {						if(this.x > -4970)							this.x -= this.map_speed;					}				}			}					/*	if(this.hero.keyboard_controls.key_left){						if(this.hero.x < 51) {							if(this.map_speed > ScrollScreen.MAX_SPEED) {								if(this.x < -2)								this.x += this.map_speed;							}						}						}*/			this.map_speed++;		}	}}