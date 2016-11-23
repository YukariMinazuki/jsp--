package com.my;

import java.util.ArrayList;
import java.util.HashMap;

public class Status {

	private ArrayList<String> zhuangkuang;
	private HashMap<String, ArrayList<String>> miaomiaomiao;
	
	public Status(){
		//��ʼ��
		zhuangkuang = new ArrayList<String>();
		miaomiaomiao = new HashMap<String, ArrayList<String>>();
		
		//������
		String qingkuang = "û�нӵ�MikuSama�绰��ʱ��";
		String qingkuang2 = "û����MikuSama����Ϸ��ʱ��";
		String qingkuang3 = "����MikuSama���յ�ʱ��";
		zhuangkuang.add(qingkuang);
		zhuangkuang.add(qingkuang2);
		zhuangkuang.add(qingkuang3);
		
		//ѡ�����
		String xuanxiang1 = "���ֻ�����û������";
		String xuanxiang2 = "���ڴ���Ϸ";
		String xuanxiang3 = "���ڸ�������";
		String xuanxiang4 = "���ڹ���";
		
		String xuanxiang2_1 = "���ڹ������°�����";
		String xuanxiang2_2 = "�����£��������";
		String xuanxiang2_3 = "�����£�����ȥ����Ա��ɣ��Ҹ�Ǯ";
		String xuanxiang2_4 = "��������������";
		
		String xuanxiang3_1 = "�Ҵ��ˣ��´�һ���ǵõ�";
		String xuanxiang3_2 = "���������գ���";
		String xuanxiang3_3 = "�Ҵ��ˣ���Ҫʲô�����ϸ��㲹��";
		String xuanxiang3_4 = "�Ҵ��ˣ�����һֱ�ڼӰ�";
		
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
		
		//�����ѡ�����hash��
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
