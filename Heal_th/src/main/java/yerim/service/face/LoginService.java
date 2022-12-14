package yerim.service.face;

import javax.servlet.http.HttpSession;

import yerim.dto.Users;

public interface LoginService {

	/**
	 * 로그인을 위한 정보 확인하기 
	 * @param login -id,pw 정보를 담은 dto
	 * @return - 가입된 아이디 존재 여부 
	 */
	public boolean checkLogin(Users login);

	/**
	 * 로그인 시 세션에 저장할 userNo조회하기
	 * @param login 
	 * @return - userNo
	 */
	public int getUserNo(Users login);

	/**
	 * 아이디찾기 시 일치하는 회원 있는지 확인하기
	 * @param searchId -아이디 찾기 시 작성된 파라미터
	 * @return -회원 존재 여부 
	 */
	public boolean searchUser(Users searchId);

	
	/**
	 * 이메일보내기
	 * @param searchId -이메일에 보낼 정보
	 * @return 
	 */
	public String sendMail(Users searchId);

	/**
	 * 이메일 인증 하기
	 * @param emailCode
	 * @param session
	 * @return
	 */
	public boolean codeChk(String emailCode, HttpSession session);

	
	/**
	 * 문자 인증번호 보내기전 회원 존재여부 조회
	 * @param searchBySms
	 * @return
	 */
	public boolean getUsersBySms(Users searchBySms);

	/**
	 * 회원에게 인증 번호 문자 보내기
	 * @param searchBySms -회원번호
	 * @return -인증번호
	 */
	public String sendMsessage(Users searchBySms);

	/**
	 * 문자인증으로 회원 아이디 조회해오기
	 * @param smsCode -회원이 입력한인증번호
	 * @param session - 생성된 인증번호
	 * @return
	 */
	public boolean smsCodeChk(String smsCode, HttpSession session);

	/**
	 * 아이디 찾기 결과 - 유저 아이디 조회하기 
	 * @param searchId
	 * @return
	 */
	public Users findUserId(Users searchId);
	
	/**
	 * 비밀번호 찾기를 위한 회원 조회
	 * @param searchPw -회원이 입력한회원 정보
	 * @return -treu or false
	 */
	public boolean checkUser(Users searchPw);
	
	/**
	 *비밀번호 찾기를 위한 인증번호 문자 보내기
	 * @param searchPw -회원이 기입한 연락처
	 * @return -인증 번호 
	 */

	public String sendMsg(Users searchPw);

	/**
	 * 비밀번호 찾기를 위한 인증번호 검증
	 * @param pwSmsCode -회원이 기입한 인증번호
	 * @param session -세션에 저장된 인증번호
	 * @return -검증 결과
	 */
	public boolean smsCodeForPw(String pwSmsCode, HttpSession session);

	
	/**
	 * 사용중인 비밀번호 확인하기
	 * @param updatePw -회원이 기입한 새 비밀번호
	 * @return true or false
	*/
	public boolean chkUsedPw(Users updatePw, HttpSession session);

	/**
	 * 비밀번호 재설정 업데이트
	 * @param userUpdatePw -유저가 입력한 새 비밀번호
	 * @param session -세션에 저장된 유저 정보
	 * @return 
	 */
	public boolean setNewPw(Users userUpdatePw, HttpSession session);

	

}
