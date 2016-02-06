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
public class TestGender1
{
	public static void main(String[] args) 
	{
		Gender1 g = Enum.valueOf(Gender1.class , "FEMALE");
		System.out.println(g + "´ú±í:" + g.getName());
		g.info();
	}
}
