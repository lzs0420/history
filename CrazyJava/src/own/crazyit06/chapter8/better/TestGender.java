package own.crazyit06.chapter8.better;

/**
 * Description:
 * <br/>Copyright (C), 2005-2008, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */
public class TestGender
{
	public static void main(String[] args) 
	{
		Gender g = Enum.valueOf(Gender.class , "FEMALE");
		g.setName("Ů");
		System.out.println(g + "����:" + g.getName());
		g.setName("��");
		System.out.println(g + "����:" + g.getName());
	}
}