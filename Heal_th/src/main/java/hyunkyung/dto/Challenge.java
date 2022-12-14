package hyunkyung.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Challenge {
	private int challengeNo;
	private String challengeKind;
	private String challengeName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date challengeCredate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date challengeEnddate;
	private int status; //기본값 1
	
	public Challenge() {
	}

	public Challenge(int challengeNo, String challengeKind, String challengeName, Date challengeCredate,
			Date challengeEnddate, int status) {
		super();
		this.challengeNo = challengeNo;
		this.challengeKind = challengeKind;
		this.challengeName = challengeName;
		this.challengeCredate = challengeCredate;
		this.challengeEnddate = challengeEnddate;
		this.status = status;
	}

	@Override
	public String toString() {
		return "Challenge [challengeNo=" + challengeNo + ", challengeKind=" + challengeKind + ", challengeName="
				+ challengeName + ", challengeCredate=" + challengeCredate + ", challengeEnddate=" + challengeEnddate
				+ ", status=" + status + "]";
	}

	public int getChallengeNo() {
		return challengeNo;
	}

	public void setChallengeNo(int challengeNo) {
		this.challengeNo = challengeNo;
	}

	public String getChallengeKind() {
		return challengeKind;
	}

	public void setChallengeKind(String challengeKind) {
		this.challengeKind = challengeKind;
	}

	public String getChallengeName() {
		return challengeName;
	}

	public void setChallengeName(String challengeName) {
		this.challengeName = challengeName;
	}

	public Date getChallengeCredate() {
		return challengeCredate;
	}

	public void setChallengeCredate(Date challengeCredate) {
		this.challengeCredate = challengeCredate;
	}

	public Date getChallengeEnddate() {
		return challengeEnddate;
	}

	public void setChallengeEnddate(Date challengeEnddate) {
		this.challengeEnddate = challengeEnddate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
