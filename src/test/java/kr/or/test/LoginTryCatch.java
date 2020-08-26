package kr.or.test;

class NotExistIDException extends Exception {
	//아이디가 존재하지 않을대 예외사항 처리 내용
	public NotExistIDException() {} //클래스명하고 똑같은 거는 생성자
	public NotExistIDException(String message) {
		super(message);
	}
}
class WrongPasswordException extends Exception {
	//패스워드 입력 오류에 대한 예외사항 처리 내용
	public WrongPasswordException() {}
	public WrongPasswordException(String message) {
		super(message); 
	}
}
public class LoginTryCatch {

	public static void main(String[] args) {
		try {
			login("white","12345");
		} catch (NotExistIDException e) {
			e.printStackTrace();
		} catch (WrongPasswordException e) {
			e.printStackTrace();
		}
		try {
			login("blue","54321");
		} catch (NotExistIDException e) {
			e.printStackTrace();
		} catch (WrongPasswordException e) {
			e.printStackTrace();
		}
	}
	
	public static void login(String id, String password) throws NotExistIDException, WrongPasswordException {
		//id가 blue가 아니라면 NotExistIDException을 발생시킴
		if(!id.equals("blue")) {
			//강제 오류예외발생 - NotExistIDException
			throw new NotExistIDException("아이디가 존재하지 않습니다.");			
		} //"아니라면"이라는 문장이 있어서 equls앞에 !(느낌표)를 붙여준다.
		//password가 "12345"가 아니라면 WrongPasswordException을 발생시킴
		if(!password.equals("12345")) {
			throw new WrongPasswordException("패스워드가 일치하지 않습니다.");
		}
	}

}