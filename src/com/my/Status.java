package com.my;

import java.util.ArrayList;
import java.util.HashMap;

public class Status {

	private ArrayList<String> zhuangkuang;
	private HashMap<String, ArrayList<String>> miaomiaomiao;
	
	public Status(){
		//初始化
		zhuangkuang = new ArrayList<String>();
		miaomiaomiao = new HashMap<String, ArrayList<String>>();
		
		//情况添加
		String qingkuang = "没有接到MikuSama电话的时候";
		String qingkuang2 = "没有陪MikuSama玩游戏的时候";
		String qingkuang3 = "忘记MikuSama生日的时候";
		zhuangkuang.add(qingkuang);
		zhuangkuang.add(qingkuang2);
		zhuangkuang.add(qingkuang3);
		
		//选项添加
		String xuanxiang1 = "我手机静音没有听到";
		String xuanxiang2 = "我在打游戏";
		String xuanxiang3 = "我在给你买东西";
		String xuanxiang4 = "我在工作";
		
		String xuanxiang2_1 = "我在工作，下班陪你";
		String xuanxiang2_2 = "我有事，你先玩吧";
		String xuanxiang2_3 = "我有事，你先去逛会淘宝吧，我付钱";
		String xuanxiang2_4 = "我马上来陪你玩";
		
		String xuanxiang3_1 = "我错了，下次一定记得的";
		String xuanxiang3_2 = "你昨天生日？！";
		String xuanxiang3_3 = "我错了，想要什么，马上给你补上";
		String xuanxiang3_4 = "我错了，昨天一直在加班";
		
		ArrayList<String> temp = new ArrayList<String>();
		temp.add(xuanxiang1);
		temp.add(xuanxiang2);
		temp.add(xuanxiang3);
		temp.add(xuanxiang4);
		
		ArrayList<String> temp2 = new ArrayList<String>();
		temp2.add(xuanxiang2_1);
		temp2.add(xuanxiang2_2);
		temp2.add(xuanxiang2_3);
		temp2.add(xuanxiang2_4);
		
		ArrayList<String> temp3 = new ArrayList<String>();
		temp3.add(xuanxiang3_1);
		temp3.add(xuanxiang3_2);
		temp3.add(xuanxiang3_3);
		temp3.add(xuanxiang3_4);
		
		//情况和选项放入hash表
		miaomiaomiao.put(qingkuang, temp);
		miaomiaomiao.put(qingkuang2, temp2);
		miaomiaomiao.put(qingkuang3, temp3);
	}

	public ArrayList<String> getZhuangkuang() {
		return zhuangkuang;
	}

	public void setZhuangkuang(ArrayList<String> zhuangkuang) {
		this.zhuangkuang = zhuangkuang;
	}

	public HashMap<String, ArrayList<String>> getMiaomiaomiao() {
		return miaomiaomiao;
	}

	public void setMiaomiaomiao(HashMap<String, ArrayList<String>> miaomiaomiao) {
		this.miaomiaomiao = miaomiaomiao;
	}
}
