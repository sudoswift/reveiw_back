package com.rev.service;

import com.rev.dao.MemberDAO;
import com.rev.service.MemberService;
import com.rev.vo.MemberVO;

public class MemberService {
	private static MemberService service = new MemberService();
	public MemberDAO dao = MemberDAO.getInstance();
	private MemberService() {}
	
	public static MemberService getInstance() {
		return service;
	}
	public void memberInsert(MemberVO mDto) {
		dao.join(mDto);
	}

}
