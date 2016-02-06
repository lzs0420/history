package own.crazyit06.chapter4;
import java.util.Arrays;
/**
 * Description:
 * <br/>Copyright (C), 2005-2008, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */
class Person1
{
	private int age;
	public Person1(){}

	public Person1(int age)
	{
		this.age = age;
	}
	public void setAge(int age)
	{
		this.age = age;
	}
	public int getAge()
	{
		 return this.age;
	}
}
public class TestFinalReference
{
	public static void main(String[] args) 
	{
		//final�������������iArr��һ�����ñ���
		final int[] iArr = {5, 6, 12, 9};
		System.out.println(Arrays.toString(iArr));
		//������Ԫ�ؽ������򣬺Ϸ�
		Arrays.sort(iArr);
		System.out.println(Arrays.toString(iArr));
		//������Ԫ�ظ�ֵ���Ϸ�
		iArr[2] = -8;
		System.out.println(Arrays.toString(iArr));
		//��������iArr���¸�ֵ���Ƿ�
		//iArr = null;
		//final����Person������p��һ�����ñ���
		final Person1 p = new Person1(45);
		//�ı�Person�����age���ԣ��Ϸ�
		p.setAge(23);
		System.out.println(p.getAge());
		//��������p���¸�ֵ���Ƿ�
		//p = null;
	}
}