package own.crazyit06.chapter6;
/**
 * Description:
 * <br/>Copyright (C), 2005-2008, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */
public interface Output
{
	//�ӿ��ﶨ�������ֻ���ǳ���
	int MAX_CACHE_LINE = 50;
	//�ӿ��ﶨ���ֻ����public�ĳ���ʵ������
	void out();
	void getData(String msg);
}