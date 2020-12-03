package _01_houses;

import java.awt.Color;

import org.jointheleague.graphical.robot.Robot;

public class Houses {
	Robot rob = new Robot();
	public void run() {
		
		rob.setX(10);
		rob.setY(500);
		house(200, "red");
		house(50, "pink");
		house(150, "yellow");
		house(100, "green");
		house(300, "blue");
		house(250, "red");
		house(100, "pink");
		house(50, "yellow");
		house(350, "green");
		house(200, "blue");
		
}
	void house(int height, String color) {
		rob.penDown();
		if(color.equals("red")) {
			rob.setPenColor(Color.red);
		}
		else if(color.equals("pink")) {
			rob.setPenColor(Color.pink);
		}
		else if(color.equals("yellow")) {
			rob.setPenColor(Color.yellow);
		}
		else if(color.equals("green")) {
			rob.setPenColor(Color.green);
		}
		else if(color.equals("blue")) {
			rob.setPenColor(Color.blue);
		}
		rob.setSpeed(50);
		rob.move(height);
		rob.setAngle(90);
		rob.move(40);
		rob.setAngle(180);
		rob.move(height);
		rob.setAngle(90);
		rob.setPenColor(Color.green);
		rob.move(50);
		rob.setAngle(0);
	}
}