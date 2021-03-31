package vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class GmemberVO {
	
	String id;
	String password;
	String sex;
	String email;
	String phone;
	String birthday;
	String rid;
	String genre1;
	String genre2;
	String grade;
	int autopay;
	String uploadfile;
	MultipartFile uploadfilef;
	
}
