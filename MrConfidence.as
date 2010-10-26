﻿package  {	import flash.display.*;	import flash.events.*;	import flash.text.*;	import flash.utils.Timer;	import flash.utils.getDefinitionByName;	import Hero;	import Bullet;	import Enemy;		public class MrConfidence extends MovieClip{		var hero:Hero;		var nextEnemy:Timer;		var enemies:Array = new Array();		var bullets:Array = new Array();		const speed:int = 5;  //Number of pixels character is moved on each KEY_DOWN		const spawnRate:int = 5;							/*Game constructor -- For now, all it does is create an instance of a hero, set it to the 		bottom left of the screen, and adds a listener for keyboard input*/		public function MrConfidence() {			hero = new Hero(bullets);			hero.x = 25;			hero.y = 350;			addChild(hero);			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler);			addEventListener(Event.ENTER_FRAME, spawnEnemy);			addEventListener(Event.ENTER_FRAME, detectCollision);			addEventListener(Event.ENTER_FRAME, removeBullet);		}						/*If the 'a' or left arrow is pressed, move character left, if the 'd' or right arrow		is pressed, move the character right.  If space is pressed, call the hero's shoot 		function.*/		public function keyDownHandler(e:KeyboardEvent):void{			trace (e.keyCode);			if (e.keyCode == 68 || e.keyCode == 39){				hero.setDirection("RIGHT");				hero.x += speed;			} else if (e.keyCode == 65 || e.keyCode == 37){				hero.setDirection("LEFT");				hero.x -= speed;			} else if (e.keyCode == 32){				hero.shoot();			}		}				public function spawnEnemy(e:Event){			var randNum = Math.floor(Math.random() * 1000);			if(randNum < spawnRate){				var newEnemy:Enemy = new Enemy(bullets);				newEnemy.x = 560;				newEnemy.y = 350;				enemies.push(newEnemy);				addChild(enemies[enemies.length-1]);				trace(enemies.length);			}		}				public function detectCollision(e:Event){			if(bullets.length > 0){				for(var i:int = 0; i<=bullets.length-1; i++){						for(var j:int = 0; j<=enemies.length; j++){							if(j == enemies.length){								if(bullets[i].x >= hero.x-12 && bullets[i].x <= hero.x + 12){									if(bullets[i].shooter == "ENEMY"){										hero.decreaseLife();										trace("Life: " + hero.lifePercentage);									}								}							} else {								if(bullets[i].x >= enemies[j].x - 12 && bullets[i].x <= enemies[j].x + 12){									if(bullets[i].shooter == "HERO"){										removeChild(enemies[j]);										enemies[j].die();										enemies.splice(j, 1);										removeChild(bullets[i]);										bullets.splice(i, 1);									}								}							}						}				}			}		}				public function removeBullet(e:Event){			for(var i:int = 0; i<=bullets.length-1; i++)				if(bullets[i].x < 0 || bullets[i].x > 550){					removeChild(bullets[i]);					bullets.splice(i, 1);				}		}			}	}