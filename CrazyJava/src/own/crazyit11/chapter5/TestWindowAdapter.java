package own.crazyit11.chapter5;
import java.awt.*;
import java.awt.event.*;
/**
 * Description:
 * <br/>Copyright (C), 2005-2008, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */
public class TestWindowAdapter
{
	private Frame f = new Frame("����");
	private TextArea ta = new TextArea(6 , 40);
	public void init()
	{
		f.addWindowListener(new MyListener());
		f.add(ta);
		f.pack();
		f.setVisible(true);
	}
	class MyListener extends WindowAdapter
	{
		public void windowClosing(WindowEvent e) 
		{
			ta.append("�û���ͼ�رմ��ڣ�\n");
			System.exit(0);
		}
	}
	public static void main(String[] args) 
	{
		new TestWindowAdapter().init();
	}
}
