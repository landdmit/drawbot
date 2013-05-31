ControlP5 cp5;

Rectangle previewRect;
Rectangle listRect;
Rectangle controlRect;
Rectangle consoleRect;

ListBox instructionListBox;
Textarea consoleTextArea;
Println console;

float timeSliderValue;

class User_Interface {
	Interface() {
		previewRect = new Rectangle(10, 10, 400, 200);
		listRect = new Rectangle(420, 25, 370, 380);
		controlRect = new Rectangle(10, 220, 400, 370);
		consoleRect = new Rectangle(420, 415, 370, 175);

		cp5.addSlider("timeSliderValue")
		.setPosition(controlRect.x, controlRect.y)
		.setWidth((int)controlRect.w)
		.setRange(0, 1)
		.setSliderMode(Slider.FLEXIBLE)
		;

		cp5.getController("timeSliderValue").getValueLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
		cp5.getController("timeSliderValue").getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);

		cp5.addButton("openSVG")
		.setPosition(controlRect.x, controlRect.y + 40)
		.setSize(100, 20)
		;

		cp5.addButton("openBOT")
		.setPosition(controlRect.x+110, controlRect.y + 40)
		.setSize(100, 20)
		;

		cp5.addButton("startBot")
		.setPosition(controlRect.x + 220, controlRect.y + 40)
		.setSize(100, 20)
		;

		instructionListBox = cp5.addListBox("instructionListBox")
		.setPosition(listRect.x, listRect.y)
		.setSize((int)listRect.w, (int)listRect.h)
		.setItemHeight(20)
		.setBarHeight(15)
		.setColorBackground(color(25))
		.setColorActive(color(0))
		.setColorForeground(color(255, 100, 0))
		.setScrollbarWidth(20)
		;
		instructionListBox.captionLabel().set("Bot Instructions");
		instructionListBox.captionLabel().style().marginTop = 3;
		instructionListBox.valueLabel().style().marginTop = 3;


		consoleTextArea = cp5.addTextarea("txt")
		.setPosition(consoleRect.x, consoleRect.y)
		.setSize((int)consoleRect.w, (int)consoleRect.h)
		.setLineHeight(14)
		.setColor(color(200))
		.setColorBackground(color(0, 100))
		.setColorForeground(color(255, 100));
		console = cp5.addConsole(consoleTextArea);



		timeSliderValue = 1.0;

	}
}