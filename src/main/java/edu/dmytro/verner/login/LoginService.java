package edu.dmytro.verner.login;

public class LoginService {

    public boolean isUserValid(String user, String password){
        return user.equals("username") && password.equals("password");
    }
}
