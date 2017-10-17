alarms = alarms + 1
var i;
for (i = 0; i < alarms; i += 1){
instance_create_layer(random(room_width),random(room_height),"layerEnemies",objEnemySpawn);
}
alarm[0] = spawnRate