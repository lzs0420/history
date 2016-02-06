package own.crazyit05.chapter8;

/**
 * Description:
 * <br/>Copyright (C), 2005-2008, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */

class Animal1
{
	private void beat()
	{
		System.out.println("心脏跳动...");
	}
	public void breath()
	{
		beat();
		System.out.println("吸一口气，吐一口气，呼吸中...");
	}
}
//继承Animal，直接复用父类的breath方法
class Bird1 extends Animal1
{
	public void fly()
	{
		System.out.println("我在天空自在的飞翔...");
	}
}
//继承Animal，直接复用父类的breath方法
class Wolf1 extends Animal1
{
	public void run()
	{
		System.out.println("我在陆地上的快速奔跑...");
	}
}
public class TestInherit
{
	public static void main(String[] args)
	{
		Bird1 b = new Bird1();
		b.breath();
		b.fly();
		Wolf1 w = new Wolf1();
		w.breath();
		w.run();		
	}
}