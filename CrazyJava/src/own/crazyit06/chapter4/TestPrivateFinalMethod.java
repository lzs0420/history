package own.crazyit06.chapter4;

/**
 * Description:
 * <br/>Copyright (C), 2005-2008, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */
public class TestPrivateFinalMethod
{
	private final void test(){}
}
class Sub extends TestPrivateFinalMethod
{
	//���淽�����彫�����������
	public void test(){}
}