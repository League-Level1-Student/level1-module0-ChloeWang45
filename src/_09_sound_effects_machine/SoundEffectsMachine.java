package _09_sound_effects_machine;

import java.applet.AudioClip;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JApplet;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class SoundEffectsMachine implements ActionListener {
	
	JFrame frame = new JFrame();
	JPanel panel = new JPanel();
	JButton button1 = new JButton();
	JButton button2 = new JButton();
	JButton button3 = new JButton();
	
	public void soundEffects() {
		
	    frame.add(panel);
	    frame.setVisible(true);
	    panel.add(button1);
	    panel.add(button2);
	    panel.add(button3);
	    button1.setText("1");
	    button2.setText("2");
	    button3.setText("3");
	    button1.addActionListener(this);
	    button2.addActionListener(this);
	    button3.addActionListener(this);
	    frame.pack();
	    
	}

	private void playSound(String fileName) {
	     AudioClip sound = JApplet.newAudioClip(getClass().getResource(fileName));
	     sound.play();
	}

	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		JButton buttonPressed = (JButton) arg0.getSource();
		if(button1 == buttonPressed) {
			playSound("sawing-wood-daniel_simon.wav");
		}
		else if(button2 == buttonPressed) {
			playSound("airplane-landing_daniel_simion.wav");
		}
		else if(button3 == buttonPressed) {
			playSound("labrador-barking-daniel_simon.wav");
		}
	}
}
