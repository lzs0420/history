package own.crazyit11.chapter9;
import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
import java.awt.datatransfer.*;
/**
 * Description:
 * <br/>Copyright (C), 2005-2008, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */
public class SimpleClipboard
{
	private Frame f = new Frame("�򵥵ļ��������");
	//��ȡϵͳ������
	private Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard(); 
	//�����Ǵ������ؼ�����Ĵ���
	//Clipboard clipboard = new Clipboard("cb"); 
	//���ڸ����ı����ı���
	private TextArea jtaCopyTo = new TextArea(5,20); 
	//����ճ���ı����ı���
	private TextArea jtaPaste = new TextArea(5,20);
	private Button btCopy = new Button("����"); //������ť
	private Button btPaste = new Button("ճ��"); //ճ����ť 
	public void init()
	{
		Panel p = new Panel();
		p.add(btCopy);
		p.add(btPaste);  
		btCopy.addActionListener(new ActionListener()
		{
			public void actionPerformed(ActionEvent event)
			{
				//��һ�������ı�������ַ�����װ��StringSelection����
				StringSelection contents=new StringSelection(jtaCopyTo.getText());
				//��StringSelection������������
				clipboard.setContents(contents, null); 
			}
		});
		btPaste.addActionListener(new ActionListener()
		{
			public void actionPerformed(ActionEvent event)
			{
				//����������а���stringFlavor����
				if (clipboard.isDataFlavorAvailable(DataFlavor.stringFlavor))
				{
					try
					{
						//ȡ����������stringFlavor����
						String content = (String)clipboard.getData(DataFlavor.stringFlavor);
						jtaPaste.append(content);
					}
					catch (Exception e)
					{
						e.printStackTrace();
					}

				}
			}
		}); 
		//����һ��ˮƽ���е�Box����
		Box box = new Box(BoxLayout.X_AXIS);
		//�����������ı������Box������
		box.add(jtaCopyTo);
		box.add(jtaPaste);
		//����ť����Panel��Box�������ӵ�Frame������
		f.add(p,BorderLayout.SOUTH); 
		f.add(box,BorderLayout.CENTER);
		f.pack();
		f.setVisible(true);
	}
	public static void main(String[] args)
	{
		new SimpleClipboard().init(); 
	}
}