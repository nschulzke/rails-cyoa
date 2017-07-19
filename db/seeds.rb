Room.create!([
 {title: "Introduction", body: "It's night, you can barely see the dirt path in front of you as you walk through the forest. You make out a faint light in the distance to your right. To reach it, you'll have to leave the trail."},
 {title: "The cottage", body: "You walk towards the light, and it gets brighter. When you get near, you see that it's coming from an old, run-down cottage."},
 {title: "The end", body: "You ignore the light, continuing along the path into the darkness. You hear wolves howling nearby. In a few seconds, they've reached you! At least you made a good meal for them."},
 {title: "Inside", body: "There's a fire burning in the hearth, but there doesn't appear to be anyone here. At the table are three bowls of soup. Your stomach growls: you're hungry."},
 {title: "A great meal", body: "You sit down and take a bite of the soup. It burns your tongue! Not to be discouraged, you try the second bowl. Too cold!\r\n\r\nFinally, you take a bite out of the third bowl. This one is perfect! You just finish eating when you hear the door open."},
 {title: "Freezing cold", body: "You sit outside the cottage all night, freezing. Finally, the sun rises, and you go home."},
 {title: "The bears", body: "You jump under the bed just in time. To your surprise, three bears walk through the door."},
 {title: "Out in the cold", body: "You turn to look who it is, only to see three bears! The largest swipes at you, throwing you out the door into the cold. You sit there freezing until morning, and then return home."}
])
Path.create!([
 {choice: "Walk towards the light", from_room_id: 1, to_room_id: 2},
 {choice: "Stick to the path", from_room_id: 1, to_room_id: 3},
 {choice: "Go inside", from_room_id: 2, to_room_id: 4},
 {choice: "Eat the soup", from_room_id: 4, to_room_id: 5},
 {choice: "Stay outside", from_room_id: 2, to_room_id: 6},
 {choice: "Hide under the bed!", from_room_id: 5, to_room_id: 7},
 {choice: "Introduce yourself", from_room_id: 5, to_room_id: 8}
])