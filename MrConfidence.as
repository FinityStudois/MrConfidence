﻿package  {	import flash.display.*;	import flash.events.*;	import flash.text.*;	import flash.utils.Timer;	import flash.utils.getDefinitionByName;	import flash.utils.setTimeout;		import cisc60.game.character.Hero;	import cisc60.game.map.DesertMap;	import cisc60.game.map.Floor;	import cisc60.game.enemy.Enemy;	import cisc60.game.input.KeyboardControls;	import cisc60.game.enemy.SpawnEnemy;		 [SWF(width="700", height="400", backgroundColor="#ffffff", frameRate="30")]		public class MrConfidence extends MovieClip {				var keyboard_controls:KeyboardControls;		var hero:Hero;		var desert_map:DesertMap;		var floor:Floor;		const speed:int = 5;  //Number of pixels character is moved on each KEY_DOWN		const spawnRate:int = 5;		var nextEnemy:Timer;		var bullets:Array = new Array();		var enemies:Vector.<Enemy>;							/*Game constructor -- For now, all it does is create an instance of a hero, set it to the 		bottom left of the screen, and adds a listener for keyboard input*/		public function MrConfidence() {									hero = new Hero(this.stage,350,385, this.bullets);						this.desert_map = new DesertMap(this.stage, this.hero);			this.desert_map.y = 400;						floor = new Floor();			floor.x = -10;			floor.y = 480;						addChild(desert_map);			addChild(floor);			addChild(hero);						/* =========================== */			/* = Create Array of Enomies = */			/* =========================== */						//this.enemies = new Vector.<Enemy>();			this.enemies = SpawnEnemy.load_level_one_enemies(this.stage, this.desert_map, this.bullets);						//stage.addEventListener(KeyboardEvent.KEY_DOWN, key_down);			addEventListener(Event.ENTER_FRAME, spawnEnemy);			addEventListener(Event.ENTER_FRAME, detectCollision);			addEventListener(Event.ENTER_FRAME, removeBullet);			addEventListener(Event.ENTER_FRAME, update_world_state);			//stage.addEventListener(KeyboardEvent.KEY_UP, key_up);		}				public function update_world_state(event:Event) {			this.hero.x = this.hero.get_hero_x();			this.hero.y = this.hero.get_hero_y();		}				public function spawnEnemy(e:Event){			for(var enm in enemies) {				if(this.desert_map.x  < this.enemies[enm].spawn_position - 100) {					addChild(enemies[enemies.length-1]);					trace(enemies.length);				}			}		}				public function detectCollision(e:Event){			if(bullets.length > 0){				for(var i:int = 0; i<=bullets.length-1; i++){					for(var j:int = 0; j<=enemies.length; j++){						if(j == enemies.length){							if(bullets[i].x >= hero.x-12 && bullets[i].x <= hero.x + 12){								if(bullets[i].shooter == "ENEMY"){									hero.decreaseLife();									removeChild(bullets[i]);									bullets.splice(i, 1);									trace("Life: " + this.hero.get_life_percentage());								}							}						} else {							if(bullets[i].x >= enemies[j].x - 12 && bullets[i].x <= enemies[j].x + 12){								if(bullets[i].shooter == "HERO"){									removeChild(enemies[j]);									enemies[j].die();									enemies.splice(j, 1);									removeChild(bullets[i]);									bullets.splice(i, 1);								}							}						}					}				}			}		}				public function removeBullet(e:Event){			for(var i:int = 0; i<=bullets.length-1; i++) {				if(bullets[i].x < 0 || bullets[i].x > 550){					removeChild(bullets[i]);					bullets.splice(i, 1);				}			}			}	}}