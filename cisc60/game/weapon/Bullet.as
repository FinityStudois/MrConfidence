﻿package cisc60.game.weapon {		import flash.display.MovieClip;	import flash.events.*;		public class Bullet extends MovieClip {		var facing:String;		var shooter:String;		const bulletSpeed:int = 15;			/*Bullet constructor -- takes 3 parameters: the x, y values of the character firing it, and the 	direction they are facing.  The direction defaults to "RIGHT" in case we get lazy and want to only 	give it the default values.  Also, this accounts for errors in calling the function, setting 	'facing' to "RIGHT" in all cases except for the passed value being "LEFT". So if you have a character	facing left and firing a bullet right, check your function call for errors.*/	public function Bullet (startX:int, startY:int, dir:String = "RIGHT", shooter:String = "HERO") {						if(shooter == "ENEMY") {				this.gotoAndStop(3);			}			if (dir == "LEFT") {				this.gotoAndStop(2);				startY -= 55;				startX -= 40;				facing = dir;			} else { 				this.gotoAndStop(1);				startY -= 50;				startX += 75;				facing = "RIGHT";			}			x = startX;			y = startY;			this.shooter = shooter;			addEventListener(Event.ENTER_FRAME, go);		}			/*Called in every timeslice, moves the bullet in the correct direction*/	public function go(e:Event){		if (facing == "RIGHT")			x += bulletSpeed;		else 			x -= bulletSpeed;		}	}	}