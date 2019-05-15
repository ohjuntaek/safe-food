package com.ssafy.safefood.exception;

import java.util.Arrays;

public class UserNotFoundedException extends Exception {
	public UserNotFoundedException() {
		super("로그인 실패!");
	}
}
