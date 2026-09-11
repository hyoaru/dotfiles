return {
	mainMod = "SUPER",
	terminal = "kitty",
	fileManager = "dolphin",
	menu = "rofi -show drun",
	colorPicker = "hyprpicker --autocopy --format=hex",
	lock = "hyprlock",

	shotRegion = "mkdir -p ~/Pictures/screenshots && grimblast copysave area ~/Pictures/screenshots/$(date +%F_%H-%M-%S-%3N).png",
	shotWindow = "mkdir -p ~/Pictures/screenshots && grimblast copysave active ~/Pictures/screenshots/$(date +%F_%H-%M-%S-%3N).png",
	shotScreen = "mkdir -p ~/Pictures/screenshots && grimblast copysave output ~/Pictures/screenshots/$(date +%F_%H-%M-%S-%3N).png",
}
