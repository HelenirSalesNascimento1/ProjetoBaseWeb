package exceptions;

public class ValidateException extends RuntimeException{
	private static final Long serialVersionUID = 1L;

	public ValidateException(String message) {
		super(message);
	}
	
	public void Throwable () {
		validateException(serialVersionUID.toString());
		System.exit(1);
	}

	private void validateException(String string) {
		new ValidateException(string);
	}
}
