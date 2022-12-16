package yerim.dao.face;

import yerim.dto.Users;

public interface MypageDao {

	/**
	 * 회원 정보 조회하기
	 * @param userNo -유저번호
	 * @return -유저정보
	 */
	public Users selectUserInfo(int userNo);

	/**
	 * 회원 정보 업데이트 하기
	 * @param userInfo -입력된 회원 정보
	 */
	public void updateUserInfo(Users userInfo);

	/**
	 * 회원 아이디 조회하기
	 * @param userNo -회원 번호
	 * @return 회원 아이디 
	 */
	public String selectUserId(int userNo);
	/**
	 * 현재사용중인 비밀번호 조회하기
	 * @param updatePwInfo -회원 정보
	 * @return -true/false
	 */

	public int selectuserPw(Users updatePwInfo);

	/**
	 * 현재 사용중인 비밀번호 
	 * @param userPw -회원정보(아이디 제외)
	 * @return -true/false
	 */
	public int selectUserPwForNewPw(Users userPw);

	/**
	 * 새로 설정한 비밀번호 update
	 * @param userNewPw -새로 설정한 비밀번호,회원 번호
	 * @return 
	 */
	public void updateUserNewPw(Users userNewPw);

}