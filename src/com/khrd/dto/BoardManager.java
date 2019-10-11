package com.khrd.dto;

import java.util.ArrayList;

public class BoardManager {
	ArrayList<BoardInfo> list = null;

	public BoardManager() {
		if (list == null) {
			list = new ArrayList<>();
		}
	}

	public ArrayList<BoardInfo> getList() {
		return list;
	}

	public void setList(ArrayList<BoardInfo> list) {
		this.list = list;
	}

	public void addBoard(BoardInfo info) {
		list.add(info);
	}

	public BoardInfo getBoard(int i) {
		return list.get(i);
	}

	public int getSize() {
		return list.size();
	}

	public void removeAll() {
		list.clear();
	}
}
