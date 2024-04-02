package dto;

import java.sql.Date;

public class fBoard {
	private Integer freeNum;
	private String freeId;
	private String freeSub;
	private String freeContent;
	private Integer freePhoto;
	private String freeTag;
	private Integer freeView;
	private Date freeWriteDate;
	private Integer freeLike;
	
	public fBoard() {}

	public fBoard(Integer freeNum, String freeId, String freeSub, String freeContent, Integer freePhoto,
			String freeTag, Integer freeView, Date freeWriteDate, Integer freeLike) {
		super();
		this.freeNum = freeNum;
		this.freeId = freeId;
		this.freeSub = freeSub;
		this.freeContent = freeContent;
		this.freePhoto = freePhoto;
		this.freeTag = freeTag;
		this.freeView = freeView;
		this.freeWriteDate = freeWriteDate;
		this.freeLike = freeLike;
	}

	public Integer getFreeNum() {
		return freeNum;
	}

	public void setFreeNum(Integer freeNum) {
		this.freeNum = freeNum;
	}

	public String getFreeNick() {
		return freeId;
	}

	public void setFreeNick(String freeNick) {
		this.freeId = freeNick;
	}

	public String getFreeSub() {
		return freeSub;
	}

	public void setFreeSub(String freeSub) {
		this.freeSub = freeSub;
	}

	public String getFreeContent() {
		return freeContent;
	}

	public void setFreeContent(String freeContent) {
		this.freeContent = freeContent;
	}

	public Integer getFreePhoto() {
		return freePhoto;
	}

	public void setFreePhoto(Integer freePhoto) {
		this.freePhoto = freePhoto;
	}

	public String getFreeTag() {
		return freeTag;
	}

	public void setFreeTag(String freeTag) {
		this.freeTag = freeTag;
	}

	public Integer getFreeView() {
		return freeView;
	}

	public void setFreeView(Integer freeView) {
		this.freeView = freeView;
	}

	public Date getFreeWriteDate() {
		return freeWriteDate;
	}

	public void setFreeWriteDate(Date freeWriteDate) {
		this.freeWriteDate = freeWriteDate;
	}

	public Integer getFreeLike() {
		return freeLike;
	}

	public void setFreeLike(Integer freeLike) {
		this.freeLike = freeLike;
	}
	
	
}