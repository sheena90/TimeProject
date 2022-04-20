package com.sheena.time.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;


public class FileManagerService {

	// final: 한번 선언된 내용이 수정이 될 수 없도록 해준다
	public final static String FILE_UPLOAD_PATH="C:\\@sheena\\Web\\Spring Project\\time\\upload\\images/";
	
	// 로거 쌓는 방법
	private static Logger logger = LoggerFactory.getLogger(FileManagerService.class);
	
	
	// 파일 저장 후, 접근 경로 리턴 , static 추가: 객체 생성없이 사용하도록 한다.
	public static String saveFile(int userId, MultipartFile file) {
		
		if(file == null) {
			
			logger.error("FileManagerService-saveFile : 파일 없음");
			
			return null;
		}
		
		// 파일 경로
		// 파일 이름이 겹치는 것을 방지하기 위해 사용자 별로 폴더를 구분한다.
		// 같은 사용자가 같은 파일 이름 겹치는 것을 방지하기 위해서 현재 시간을 폴더 이름에 포함 시킨다.
		// UNIX time:1970년 1월 1일 0시0분0초 기준으로 현재 몇 millisecond 초(1/1000)가 지났는지
		// /images/6_12912098/asdf.jpg
		
		String directoryName = userId + "_" + System.currentTimeMillis() + "/";
		
		// 실제로 파일이 저장되는 경로
		// 
		String filePath = FILE_UPLOAD_PATH + directoryName;
		
		// 디렉토리 생성
		File directory = new File(filePath);
		if(directory.mkdir() == false) {
			// 디렉토리 생성 에러
			logger.error("FileManagerService-saveFile : 디렉토리 생성 에러");
			return null;
		}
		
		// 파일 저장
		try {
			byte[] bytes = file.getBytes();
			Path path = Paths.get(filePath + file.getOriginalFilename());
			Files.write(path, bytes);
			
		} catch (IOException e) {
			
			e.printStackTrace();
			logger.error("FileManagerService-saveFile : 파일 저장 에러");
			return null;
		}
		
		// <img src="/images/6_12912098/test.png">
		// /images/6_12912098/test.png
		return "/images/" + directoryName + file.getOriginalFilename();
		
		
		
		
		
		
		
		
		
		
	}
}
