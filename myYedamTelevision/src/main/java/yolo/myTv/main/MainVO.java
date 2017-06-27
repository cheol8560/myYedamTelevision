package yolo.myTv.main;

public class MainVO {
	private int outSumMember;
	private int outSumPoint;
	private int outCountBoard;
	private int outCountBroadcast;
	public int getOutSumMember() {
		return outSumMember;
	}
	public void setOutSumMember(int outSumMember) {
		this.outSumMember = outSumMember;
	}
	public int getOutSumPoint() {
		return outSumPoint;
	}
	public void setOutSumPoint(int outSumPoint) {
		this.outSumPoint = outSumPoint;
	}
	public int getOutCountBoard() {
		return outCountBoard;
	}
	public void setOutCountBoard(int outCountBoard) {
		this.outCountBoard = outCountBoard;
	}
	public int getOutCountBroadcast() {
		return outCountBroadcast;
	}
	public void setOutCountBroadcast(int outCountBroadcast) {
		this.outCountBroadcast = outCountBroadcast;
	}
	@Override
	public String toString() {
		return "MainVO [outSumMember=" + outSumMember + ", outSumPoint="
				+ outSumPoint + ", outCountBoard=" + outCountBoard
				+ ", outCountBroadcast=" + outCountBroadcast + "]";
	}
	
	
	
	 
}
