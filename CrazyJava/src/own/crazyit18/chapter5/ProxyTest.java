package own.crazyit18.chapter5;


import java.lang.reflect.*;
/**
 * Description:
 * <br/>Copyright (C), 2008-2010, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */
interface Person
{
	void walk();
	void sayHello(String name);
}
class MyInvokationHandler implements InvocationHandler
{
	/*
		ִ�ж�̬������������з���ʱ�����ᱻ�滻��ִ�����µ�invoke����
		���У�
		proxy��������̬��������
		method����������ִ�еķ���
		args������ִ�д������󷽷�ʱ�����ʵ�Ρ�
	*/
	public Object invoke(Object proxy, Method method, Object[] args)
	{
		System.out.println("����ִ�еķ���:" + method);
		if (args != null)
		{
			System.out.println("������ִ�и÷���ʱ�����ʵ��:");
			for (Object val : args)
			{
				System.out.println(val);
			}
		}
		else
		{
			System.out.println("���ø÷�������ʵ�Σ�");
		}
		return null;
	}
}
public class ProxyTest
{
	public static void main(String[] args) 
		throws Exception
	{
		//����һ��InvocationHandler����
		InvocationHandler handler = new MyInvokationHandler();
		//ʹ��ָ����InvocationHandler������һ����̬��������
		Person p = (Person)Proxy.newProxyInstance(
			Person.class.getClassLoader(),
			new Class[]{Person.class}, handler);
		//���ö�̬���������walk()��sayHello()����
		p.walk();
		p.sayHello("�����");
	}
}