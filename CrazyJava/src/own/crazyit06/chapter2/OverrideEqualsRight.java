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
 
//����һ��Person��
class Person
{
	private String name;
	private String idStr;
	public Person(){}
	public Person(String name , String idStr)
	{
		this.name = name;
		this.idStr = idStr;
	}
	//������name��idStr��setter��getter������
	public void setName(String name)
	{
		this.name = name;
	}
	public String getName()
	{
		 return this.name;
	}

	public void setIdStr(String idStr)
	{
		this.idStr = idStr;
	}
	public String getIdStr()
	{
		 return this.idStr;
	}
//	//��дequals�������ṩ�Զ������ȱ�׼
//	public boolean equals(Object obj)
//	{
//		//ֻ�е�obj��Person����
//		if (obj != null && obj instanceof Person)
//		{
//			Person personObj = (Person)obj;
//			//���ҵ�ǰ�����idStr��obj�����idStr��Ȳſ��ж������������
//			if (this.getIdStr().equals(personObj.getIdStr()))
//			{
//				return true;
//			}
//		}
//		return false;
//	}

	//��дequals�������ṩ�Զ������ȱ�׼
	public boolean equals(Object obj)
	{
		//���Ƚϵ�����������ͬһ������ֱ�ӷ���true
		if(this == obj)
		{
			return true;
		}
		//ֻ�е�obj��Person����
		if (obj != null && obj.getClass() == Person.class)
		{
			Person personObj = (Person)obj;
			//���ҵ�ǰ�����idStr��obj�����idStr��Ȳſ��ж������������
			if (this.getIdStr().equals(personObj.getIdStr()))
			{
				return true;
			}
		}
		return false;
	}

}
public class OverrideEqualsRight
{
	public static void main(String[] args) 
	{
		Person p1 = new Person("�����" , "12343433433");
		Person p2 = new Person("������" , "12343433433");
		Person p3 = new Person("����" , "99933433");
		//p1��p2��idStr��ȣ��������true
		System.out.println("p1��p2�Ƿ���ȣ�" + p1.equals(p2));
		//p2��p3��idStr����ȣ��������false
		System.out.println("p2��p3�Ƿ���ȣ�" + p2.equals(p3));
	}
}