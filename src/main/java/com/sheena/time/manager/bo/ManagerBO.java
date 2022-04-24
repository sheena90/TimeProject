package com.sheena.time.manager.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sheena.time.common.EncryptUtils;
import com.sheena.time.manager.dao.ManagerDAO;
import com.sheena.time.manager.model.ManagerModel;

@Service
public class ManagerBO {

	@Autowired
	private ManagerDAO managerDAO;
	
	// 관리자 회원가입
	public int addManager(
			String loginId,
			String password) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return managerDAO.insertManager(loginId, encryptPassword);
	}
	
	
	// 관리자 로그인
	public ManagerModel getManager(String loginId, String password) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return managerDAO.selectManager(loginId, encryptPassword);
	}
}
