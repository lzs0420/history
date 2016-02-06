package own.crazyit18.chapter2;


import java.net.*;
/**
 * Description:
 * <br/>Copyright (C), 2008-2010, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */
public class BootstrapTest
{
	public static void main(String[] args) 
	{
		//获取根类加载器所加载的全部URL数组
		URL[] urls = sun.misc.Launcher.
			getBootstrapClassPath().getURLs();
		//遍历、输出根类加载器加载的全部URL
		for (int i = 0; i < urls.length; i++) 
		{
			System.out.println(urls[i].toExternalForm());
		}
	}
}
