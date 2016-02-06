package own.crazyit09.chapter3;

/**
 * Description:
 * <br/>Copyright (C), 2005-2008, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */
public class TestStringBuilder
{
	public static void main(String[] args) 
	{
		StringBuilder sb = new StringBuilder();
		//׷���ַ���
		sb.append("java");//sb = "java"
		//����
		sb.insert(0 , "hello "); //sb="hello java"
		//�滻
		sb.replace(5, 6, ","); //sb="hello java"
		//ɾ��
		sb.delete(5, 6);//sb="hellojava" 
		System.out.println(sb);
		//��ת
		sb.reverse();//sb="avajolleh"
		System.out.println(sb);
		System.out.println(sb.length()); //���9 
		System.out.println(sb.capacity());  //���16
		//�ı�StringBuilder�ĳ��ȣ���ֻ����ǰ�沿��
		sb.setLength(5); //sb="avajo"
		System.out.println(sb);
	}
}