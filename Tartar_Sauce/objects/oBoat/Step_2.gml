// Move camera to boat

halfViewwidth = camera_get_view_width(view_camera[0]) / 2;
halfViewheight = camera_get_view_height(view_camera[0]) / 2;

camera_set_view_pos(view_camera[0], x - halfViewwidth, y - halfViewheight)