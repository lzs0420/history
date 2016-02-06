package own.crazyit17.chapter3.MultiThread.server;

import java.io.*;
import java.net.*;
import java.util.*;

/**
 * @author  yeeku.H.lee kongyeeku@163.com
 * @version  1.0
 * <br>Copyright (C), 2005-2008, yeeku.H.Lee
 * <br>This program is protected by copyright laws.
 * <br>Program Name:
 * <br>Date: 
 */
//������ÿ���߳�ͨ�ŵ��߳���
public class ServerThread implements Runnable 
{
	//���嵱ǰ�߳���������Socket
	Socket s = null;
	//���߳���������Socket����Ӧ��������
	BufferedReader br = null;
	public ServerThread(Socket s)
		throws IOException
	{
		this.s = s;
		//��ʼ����Socket��Ӧ��������
		br = new BufferedReader(new InputStreamReader(s.getInputStream()));
	}
	public void run()
	{
		try
		{
			String content = null;
			//����ѭ�����ϴ�Socket�ж�ȡ�ͻ��˷��͹���������
			while ((content = readFromClient()) != null)
			{
				//����socketList�е�ÿ��Socket��
				//��������������ÿ��Socket����һ��
				for (Socket s : MyServer.socketList)
				{
					PrintStream ps = new PrintStream(s.getOutputStream());
					ps.println(content);
				}
			}
		}
		catch (IOException e)
		{
			//e.printStackTrace();
		}
	}
	//�����ȡ�ͻ������ݵķ���
	private String readFromClient()
	{
		try
		{
			return br.readLine();	
		}
		//�����׽���쳣��������Socket��Ӧ�Ŀͻ����Ѿ��ر�
		catch (IOException e)
		{
			//ɾ����Socket��
			MyServer.socketList.remove(s);
		}
		return null;
	}
}