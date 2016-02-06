/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.service;

import com.bean.adress;
import com.bean.picture;
import com.bean.plant;
import com.connect.connect;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.WritableRaster;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.stream.FileImageInputStream;
import javax.imageio.stream.FileImageOutputStream;
import javax.imageio.stream.MemoryCacheImageInputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.swing.ImageIcon;

/**
 *
 * @author Administrator
 */
public class imageService {

    public imageService() {
    }
    
    public boolean newPicture(String pid){
        connect c=new connect();
        boolean tag=false;
        Connection con=null;
        try {
            con=c.getConnection();
        } catch (Exception ex) {
            Logger.getLogger(plantService.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
			con.setAutoCommit(false);
			
			PreparedStatement ps=con.prepareStatement("insert into picture(Pic_id,P_id)values(?,?)");
			ps.setString(1, getPic_id());
			ps.setString(2, pid);
			
                        ps.executeUpdate();
			con.commit();
			tag=true;
		} catch (SQLException e1) {
			
			try {
				con.rollback();
			} catch (SQLException e2) {
				
				e2.printStackTrace();
			}
			e1.printStackTrace();
		}
        
        return tag;
    }
    
    public static String getPic_id(){
        String temp=null;
        connect c=new connect();
        Connection con=null;
        try {
            con=c.getConnection();
        } catch (Exception ex) {
            Logger.getLogger(plantService.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
			con.setAutoCommit(false);
			
                            PreparedStatement ps=con.prepareStatement("select Pic_id from picture");
			    ResultSet rs=ps.executeQuery();
                        
                            if(rs.last()){
                                temp=rs.getString("Pic_id");
                            }
                        
			con.commit();
		} catch (SQLException e1) {
			
			try {
				con.rollback();
			} catch (SQLException e2) {
				
				e2.printStackTrace();
			}
			e1.printStackTrace();
		}
        int x=Integer.parseInt(temp);
        x++;
        String[] ss={"","0000","000","00","0"};
        temp=String.valueOf(x);
        temp=ss[temp.length()]+temp;
        return temp;
    }
    
    public static void uploadImage(String path,String filename,InputStream is) throws FileNotFoundException, IOException{
        File file=new File(path,filename);
        FileOutputStream out = new FileOutputStream(file);
        BufferedInputStream fileIn = new BufferedInputStream(is);
        byte[] buffer = new byte[1024];  
        int len = 0;  
        while((len = fileIn.read(buffer)) != -1){//System.out.println(new String(buffer)+"222");
            out.write(buffer,0,len);
        }
        out.flush();
        out.close();
    }
    
    public static void writrImage(String loadpath,String filename,HttpServletResponse response) throws FileNotFoundException, IOException{
        //String filename=request.getParameter("fliename");
        //String loadpath=request.getSession().getServletContext().getRealPath("/")+"Image";
        
        File file=new File(loadpath,filename);
        BufferedInputStream in = new BufferedInputStream(new FileInputStream(file));
        int i=in.available();
        //实现了一个输出流，其中的数据被写入一个 byte 数组。缓冲区会随着数据的不断写入而自动增长。可使用 toByteArray() 和 toString() 获取数据。
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] temp = new byte[i];
        int size = 0;
        //读入缓冲区的字节总数，如果因为已经到达文件末尾而没有更多的数据，则返回 -1。
        while ((size = in.read(temp)) != -1) {
              out.write(temp, 0, size);
        }
        //usedMemory(2);
        in.close();
        //Provides an output stream for sending binary data to the client.
        ServletOutputStream baos = response.getOutputStream();
        out.writeTo(baos);
        out.flush();
    }
    
    public static List<picture> getImgpath(String id) throws Exception{
         //String picid=null;
         List<picture> l=new ArrayList<picture>();
	 Connection con=connect.getConnection();
	 ResultSet rs= null,rs1=null;
		try {
			PreparedStatement ps=con.prepareStatement("select Pic_id from picture where P_id = ?");
                        ps.setString(1, id);
			rs=ps.executeQuery();
			while(rs.next()){
                            String picid=rs.getString("Pic_id");//System.out.println(picid+"111");
                            picture p=new picture(picid,id);
                            l.add(p);
                        }
			connect.closeStatement(ps);
			connect.closeResultSet(rs);
			connect.closeConnection(con);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	   return l;
    }
    
    public static byte[] image2Bytes(String imagePath) {
        ImageIcon ima = new ImageIcon(imagePath);
        BufferedImage bu = new BufferedImage(ima.getImage().getWidth(null), ima.getImage().getHeight(null), BufferedImage.TYPE_INT_RGB);
        ByteArrayOutputStream imageStream = new ByteArrayOutputStream();
        try {
                //把这个jpg图像写到这个流中去,这里可以转变图片的编码格式
            boolean resultWrite = ImageIO.write(bu, "png", imageStream);
        } catch (IOException e) {
                
                e.printStackTrace();
        }
        byte[] tagInfo = imageStream.toByteArray();
        return tagInfo;
    }
    
    public static String checkImageType(byte[] imageBytes) {
        ByteArrayInputStream bais = null;
        MemoryCacheImageInputStream mcis = null;
        try {
            bais = new ByteArrayInputStream(imageBytes);
            mcis = new MemoryCacheImageInputStream(bais);
            Iterator<ImageReader> itr = ImageIO.getImageReaders(mcis);
            while (itr.hasNext()) {
                ImageReader reader = (ImageReader) itr.next();
                String imageName = reader.getClass().getSimpleName();
                if (imageName != null && ("JPEGImageReader".equalsIgnoreCase(imageName))) {
                    return "jpeg";
                }else if (imageName != null && ("JPGImageReader".equalsIgnoreCase(imageName))) {
                    return "jpg";
                }else if (imageName != null && ("pngImageReader".equalsIgnoreCase(imageName))) {
                    return "png";
                }
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }
    /*文件解析：
       FileImageOutputStream 换成了 FileOutputStream
       FileImageInputStream 换成 FileInputStream*/
    
    public static byte[] image2byte(String path){      //图片到byte数组
        byte[] data = null;
        FileImageInputStream input = null;
        try {
            input = new FileImageInputStream(new File(path));
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buf = new byte[1024];
            int numBytesRead = 0;
            while ((numBytesRead = input.read(buf)) != -1) {
                output.write(buf, 0, numBytesRead);
            }
            data = output.toByteArray();
            output.close();
            input.close();
        }
        catch (FileNotFoundException ex1) {
            ex1.printStackTrace();
        }
        catch (IOException ex1) {
            ex1.printStackTrace();
        }
        return data;
    }
    //byte数组到图片
    public static void byte2image(byte[] data,String path){
        if(data.length<3||path.equals("")) return;
        try{
            FileImageOutputStream imageOutput = new FileImageOutputStream(new File(path));
            imageOutput.write(data, 0, data.length);
            imageOutput.close();
            System.out.println("Make Picture success,Please find image in " + path);
            } catch(Exception ex) {
                System.out.println("Exception: " + ex);
                ex.printStackTrace();
            }
        }  
    //byte数组到16进制字符串
    public static String byte2string(byte[] data){
        if(data==null||data.length<=1) return "0x";
        if(data.length>200000) return "0x";
        StringBuffer sb = new StringBuffer();
        int buf[] = new int[data.length];
        //byte数组转化成十进制
        for(int k=0;k<data.length;k++){
            buf[k] = data[k]<0?(data[k]+256):(data[k]);
        }
        //十进制转化成十六进制
        for(int k=0;k<buf.length;k++){
            if(buf[k]<16) sb.append("0"+Integer.toHexString(buf[k]));
            else sb.append(Integer.toHexString(buf[k]));
        }
        return "0x"+sb.toString().toUpperCase();
    } 
    
    public static BufferedImage resize(BufferedImage source, int targetW, int targetH) {  
        // targetW，targetH分别表示目标长和宽  
        int type = source.getType();  
        BufferedImage target = null;  
        double sx = (double) targetW / source.getWidth();  
        double sy = (double) targetH / source.getHeight();  
        //这里想实现在targetW，targetH范围内实现等比缩放。如果不需要等比缩放  
        //则将下面的if else语句注释即可  
        if(sx>sy)  
        {  
            sx = sy;  
            targetW = (int)(sx * source.getWidth());  
        }else{  
            sy = sx;  
            targetH = (int)(sy * source.getHeight());  
        }  
        if (type == BufferedImage.TYPE_CUSTOM) {//handmade  
            ColorModel cm = source.getColorModel();  
            WritableRaster raster = cm.createCompatibleWritableRaster(targetW, targetH);  
            boolean alphaPremultiplied = cm.isAlphaPremultiplied();  
            target = new BufferedImage(cm, raster, alphaPremultiplied, null);  
        } 
        else  target = new BufferedImage(targetW, targetH, type);  
        Graphics2D g = target.createGraphics();  
        //smoother than exlax:  
        g.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY );  
        g.drawRenderedImage(source, AffineTransform.getScaleInstance(sx, sy));  
        g.dispose();  
        return target;    
     }
 
    
}
