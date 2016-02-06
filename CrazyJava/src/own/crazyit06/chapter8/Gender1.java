package own.crazyit06.chapter8;
/**
 * Description:
 * <br/>Copyright (C), 2005-2008, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */
public enum Gender1 implements GenderDesc
{
	//�˴���ö��ֵ������ö�Ӧ������������
	MALE("��")
	{
		public void info()
		{
			System.out.println("���ö��ֵ��������");
		}
	},
	FEMALE("Ů")
	{	
		public void info()
		{
			System.out.println("���ö��ֵ����Ů��");
		}
	};
	private String name;
	//ö����Ĺ�����ֻ��ʹ��private����
	private Gender1(String name)
	{
		this.name = name;
	}
	public String getName()
	{
		 return this.name;
	}
	/*
	public void info()
	{
		System.out.println("����һ���������ڶ����Ա����Ե�ö����");
	}
	*/
}