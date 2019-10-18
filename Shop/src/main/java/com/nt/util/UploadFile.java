package com.nt.util;

import java.io.File;
import java.io.IOException;

import org.apache.commons.lang.RandomStringUtils;

import com.nt.pojo.UploadedImageFile;

/**
 * 上传文件
 *
 */
public class UploadFile {
	
	/**
	 * 上传文件，返回新的文件名
	 * @param file
	 * @return
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	public static String uploadFile(UploadedImageFile file){
		// 获取随机文件名
        String name = RandomStringUtils.randomAlphanumeric(10);
        // 获取原有文件名称（包括文件类型）
        String fileName = file.getImage().getOriginalFilename();
        // 截取文件类型
        int  indexdot =  fileName.indexOf(".");
        String suffix =  fileName.substring(indexdot);

        // 创建文件，给文件起名字
        String newFileName = name + suffix;
        //  创建 File对象，并设定存放位置和存放文件的文件名
        String path = "E:\\www\\images";
        File newFile = new File(path, newFileName);
        // 调用newFile这个实例的getParentFile方法， 返回它的父目录对象的实例，得到父目录实例后，接着调用.mkdirs()(是父目录这个实例调用的)，创建文件夹。
        newFile.getParentFile().mkdirs();
        // 复制文件，把图片写入磁盘
        try {
			file.getImage().transferTo(newFile);
		} catch (IllegalStateException | IOException e) { // 图片写入磁盘失败
			System.out.println("图片写入磁盘时出错");
			return "";
		}
        return newFileName;
	}
}
