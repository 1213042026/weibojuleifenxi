package com.wb;

import java.util.ArrayList;
import java.util.List;

public class Kmeansmain {

	 public  static void main(String[] args)  
	    {  
	        //��ʼ��һ��Kmean���󣬽�k��Ϊ2  
	        Kmeans k=new Kmeans(2);  
	         List<float[]> dataSet=new ArrayList<float[]>();  
	        dataSet.add(new float[]{1,2});  
	        dataSet.add(new float[]{3,3});  
	        dataSet.add(new float[]{3,4});  
	        dataSet.add(new float[]{5,6});  
	        dataSet.add(new float[]{8,9});  
	        dataSet.add(new float[]{4,5});  
	        dataSet.add(new float[]{6,4});  
	        dataSet.add(new float[]{3,9});  
	        dataSet.add(new float[]{5,9});  
	        dataSet.add(new float[]{4,2});  
	        dataSet.add(new float[]{1,9});  
	        dataSet.add(new float[]{7,8});  
	        //����ԭʼ���ݼ�  
	        k.setDataSet(dataSet);  
	        //ִ���㷨  
	        k.execute();  
	        //�õ�������  
	        List<List<float[]>> cluster=k.getCluster();  
	        //�鿴���  
	        for(int i=0;i<cluster.size();i++)  
	        {  
	            k.printDataArray(cluster.get(i), "cluster["+i+"]");  
	        }  
	          
	    }  
}
