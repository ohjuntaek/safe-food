package com.ssafy.safefood.exception;

import java.util.Arrays;

public class DuplicateIngestException extends Exception {
	
	
	@Override
	public String toString() {
		return "이미 섭취한 식품입니다"; 
	}

	public DuplicateIngestException() {
		super();
	}

	public DuplicateIngestException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

	public DuplicateIngestException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public DuplicateIngestException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public DuplicateIngestException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}
	
}
