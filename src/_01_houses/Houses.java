package _01_houses;

import java.awt.Color;

import org.jointheleague.graphical.robot.Robot;

public class Houses {
	public void run(int size, String color) {
		
		Robot rob = new Robot();
		rob.setX(0);
		rob.setY(500);
		rob.turn(90);
		rob.penDown();
		rob.setSpeed(50);
	for(int i = 0; i < 10; i++) {
		rob.setPenColor(Color.green);
		rob.move(50);
		rob.setAngle(0);
		if(color.equals("red")) {
			rob.setPenColor(Color.red);
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
		rob.move(size);
		rob.setAngle(90);
		rob.move(30);
		rob.setAngle(180);
		rob.move(size);
		rob.setAngle(90);
	}
}
}