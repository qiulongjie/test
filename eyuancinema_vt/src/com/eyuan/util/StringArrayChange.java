package com.eyuan.util;

public class StringArrayChange {

	
	public int[] stringToIntArray(String str){
		String s[] = str.split(",");
	    int a[] = new int[s.length];
	    for(int i=0;i<a.length;i++){
	    	a[i]=Integer.parseInt(s[i]);
	    }
	    return a;
	}

//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//
//		String s= "90,100,67,78";
//		int a[]= new StringArrayChange().stringToIntArray(s);
//		int sum=0;
//		for(int i=0;i<a.length;i++){
//			System.out.println(a[i]);
//			sum=sum+a[i];
//		}
//		System.out.println(sum);
//	}

}
