package com.khrd.dto;

import java.util.ArrayList;

public class MovieManager {
	ArrayList<MovieInfo> list = null;
	
	public MovieManager() {
		if(list==null) {
			list = new ArrayList<>();
		}
	}
	
	
	
	public ArrayList<MovieInfo> getList() {
		return list;
	}



	public void setList(ArrayList<MovieInfo> list) {
		this.list = list;
	}



	public void addMovie(MovieInfo info) {
		list.add(info);
	}
	
	public MovieInfo getMovie(int i) {
		return list.get(i);
	}
	
	public int getSize() {
		return list.size();
	}
}
