package hyunkyung.dao.face;

import hyunkyung.dto.Challenge;

public interface CreateDao {

	/**
	 * 신규 챌린지 방 삽입하기
	 * 
	 * @param challenge - 신규 생성 방 정보
	 */
	public void insert(Challenge challenge);

}
