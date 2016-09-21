package com.baoding.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import sun.misc.BASE64Encoder;


/**
 * @description ��װ�����ַ����
 * @version  1.0
 * @modifiedBy  clj
 * @modifiedTime 2014/08/26
 * 
 */
public class StringUtil {
	
	public static boolean isNull(String str){
		  return null == str || "".equals(str.trim());
	}
	
	private static final String pool = "abcdefghijklmnopqrstuvwxyz";
	
	/**
	 * @description ���sizeΪa-z������ַ�
	 * @version  1.0
	 * @modifiedBy  clj
	 * @modifiedTime 2014/08/26
	 * @param size
	 * @return
	 */
	public static String randomCode(int size){
		Random r = new Random();
		StringBuilder code = new StringBuilder();
		for(int i=0; i<size; i++){
			int index = r.nextInt(pool.length());
			code.append(pool.charAt(index));
		}
		return code.toString();
	}
	
	public static List<String> findSubstr(String str, String regex){
		  List<String> result = new ArrayList<String>();
		  Pattern p = Pattern.compile(regex);
		  Matcher m = p.matcher(str);
		  while(m.find()){
			  result.add(m.group());
		  }
		  return result;
	}
	
	public static  String  findFirstSubstr(String str, String regex){
		  Pattern p = Pattern.compile(regex);
		  Matcher m = p.matcher(str);
		  if(m.find()){
			  return m.group();
		  }
		  return null;
	}
	
	/**
	 * @description ����ĸ��д
	 * @version  1.0
	 * @modifiedBy  clj
	 * @modifiedTime 2014/08/26
	 * @param str
	 * @return
	 */
	public static String upperFirstChar(String str){
		return str.replaceFirst(str.substring(0, 1), str.substring(0, 1).toUpperCase());
	}
	
	/**
	 * @description ����ĸСд
	 * @version  1.0
	 * @modifiedBy  clj
	 * @modifiedTime 2014/08/26
	 * @param str
	 * @return
	 */
	public static String lowerFirstChar(String str){
		return str.replaceFirst(str.substring(0, 1), str.substring(0, 1).toLowerCase());
	}
	
	/**
	 * @description ����ݿ��ֶ���ת��Ϊʵ��������ֵ,��Ҫ����col_name --> colName
	 * 						���÷�ʽ   getPropertyName("col_name","_")
	 * @version  1.0
	 * @modifiedBy  clj
	 * @modifiedTime 2014/08/26
	 * @param colName   �ֶ���
	 * @param split    �ָ���
	 * @return
	 */
	public static String getPropertyName(String colName, String split){
		String[] parts = colName.split(split);
		StringBuilder buf = new StringBuilder();
		for(int i=0; i<parts.length; i++){
			String p = parts[i];
			if(i == 0){
				buf.append(lowerFirstChar(p));
			}else{
				buf.append(upperFirstChar(p));
			}
		}
		return buf.toString();
	}
	
	/**
	 * @description ����ݿ��ֶ���ת��Ϊʵ��������ֵ,�ָ���Ϊ�»���"_"
	 * @version  1.0
	 * @modifiedBy  clj
	 * @modifiedTime 2014/08/26
	 * @param colName   �ֶ���
	 * @return
	 */
	public static String getPropertyName(String colName){
		return getPropertyName(colName, "_");
	}
	
	/**
	 * @description �����ݿ��ֶ���ת��Ϊʵ��������ֵ��Ӧ��getXXX������,�ֶηָ���Ϊ�»���"_"
	 * @version  1.0
	 * @modifiedBy  clj
	 * @modifiedTime 2014/08/26
	 * @param colName
	 * @return
	 */
	public static String getGetName(String colName){
		return "get"+upperFirstChar(getPropertyName(colName));
	}
	
	/**
	 * @description �����ݿ��ֶ���ת��Ϊʵ��������ֵ��Ӧ��setXXX������,�ֶηָ���Ϊ�»���"_"
	 * @version  1.0
	 * @modifiedBy  clj
	 * @modifiedTime 2014/08/26
	 * @param colName
	 * @return
	 */
	public static String getSetName(String colName){
		return "set"+upperFirstChar(getPropertyName(colName));
	}
	
	/**
	 * @description �������������ݿ��ֶ����ֶ�����"_"ƴ�ӣ������������������ֵ��޷�����
	 * @version  1.0
	 * @modifiedBy  clj
	 * @modifiedTime 2014/08/26
	 * @param propertyName
	 * @return
	 */
	public static String getColName(String propertyName){
		StringBuilder buf = new StringBuilder();
		for(int i=0; i<propertyName.length(); i++){
			String s = propertyName.substring(i, i+1);
			if(s.equals(s.toUpperCase())){
				buf.append("_"+s.toLowerCase());
			}else{
				buf.append(s);
			}
		}
		return buf.toString();
	}
	/**
	 * ��֤�Ƿ�������ƶ����ֻ��
	 * @param mobile
	 * @return
	 */
	public static boolean checkMobile(String mobile){
		int substr=Integer.parseInt(mobile.substring(0, 7));
		if((substr>=1350200&&substr<=1350219)
				||(substr>=1351200&&substr<=1351229)||(substr>=1351240&&substr<=1351249)||(substr>=1351280&&substr<=1351299)||(substr>=1351610&&substr<=1351629)||(substr>=1360200&&substr<=1360219)||(substr>=1361200&&substr<=1361219)||(substr>=1362200&&substr<=1362219)
				||(substr>=1364200&&substr<=1364219)||(substr>=1365200&&substr<=1365219)||(substr>=1366200&&substr<=1366219)||(substr>=1367200&&substr<=1367219)||(substr>=1368200&&substr<=1368219)||(substr>=1370200&&substr<=1370219)||(substr>=1375200&&substr<=1375279)
				||(substr>=1380200&&substr<=1380219)||(substr>=1380300&&substr<=1380309)||(substr>=1382000&&substr<=1382199)||(substr>=1390200&&substr<=1390219)||(substr>=1392000&&substr<=1392099)
				||(substr>=1470220&&substr<=1470229)||(substr>=1472200&&substr<=1472229)||(substr>=1472280&&substr<=1472299)||(substr>=1500220&&substr<=1500229)||(substr>=1502200&&substr<=1502279)
				||(substr>=1510220&&substr<=1510229)||(substr>=1512200&&substr<=1512299)||(substr>=1520220&&substr<=1520229)||(substr>=1522200&&substr<=1522289)
				||(substr>=1570220&&substr<=1570229)||(substr>=1571020&&substr<=1571029)||(substr>=1571220&&substr<=1571229)||(substr>=1572200&&substr<=1572209)||(substr>=1572220&&substr<=1572229)||(substr>=1576070&&substr<=1576079)
				||(substr>=1576970&&substr<=1576979)||(substr==1579460)||(substr>=1580220&&substr<=1580229)||(substr>=1582200&&substr<=1582299)||(substr>=1590020&&substr<=1590039)||(substr>=1590220&&substr<=1590229)||(substr>=1592200&&substr<=1592229)
				||(substr==1822233)
				||(substr>=1830220&&substr<=1830229)||(substr>=1832200&&substr<=1832279)
				||(substr>=1870220&&substr<=1870229)||(substr>=1872200&&substr<=1872269)||(substr>=1880220&&substr<=1880229)||(substr>=1881250&&substr<=1881299)||(substr>=1882200&&substr<=1882279)
				){
			return true;
		}else{
			return false;
		}
		
	}
	public static boolean isMobileNO(String mobiles){  
		  
		Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");  
		  
		Matcher m = p.matcher(mobiles);  
		  
		return m.matches();  
		  
	}
	public static String base64Encoder(String content){
		return new BASE64Encoder().encodeBuffer(content.getBytes());
	}
	
	public static String dateToString(String format){
		Date date = new Date();
		DateFormat fmt = new SimpleDateFormat(format);
		return fmt.format(date);
	}
	
	public static void main(String[] args) {
		System.out.println(dateToString("yyyyMMddHHmmss")+randomCode(4));
	}

}
