package own.crazyit06.chapter2;

/**
 * Description:
 * <br/>Copyright (C), 2005-2008, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */

class Person2
{
	private String name;
	public Person2(String name)
	{
		this.name = name;
	}
	public void info()
	{
		System.out.println("������Ϊ��" + name);
	}
}
public class PrintObject
{
	public static void main(String[] args) 
	{
		//����һ��Person���󣬽�֮������p����
		Person2 p = new Person2("�����");
		//��ӡp�����õ�Person����
		System.out.println(p);
		System.out.println(p.hashCode());

		String pStr = p + "";
	}
}
