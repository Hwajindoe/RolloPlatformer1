event_inherited()
direction =270

var fallen = choose (image_index = 1, image_index = 2,image_index = 3);

image_index = fallen; 

 // Destroy the original object

instance_create_layer(x, y, "instances", downedHat); // Create the new object