
package services;

import models.User;
import java.util.List;
import dataaccess.UserDB;
/**
 *
 * @author mehar
 */
public class UserService {
    
      public List<User> getAll() throws Exception {
        UserDB userDB = new UserDB();
        List<User> users = userDB.getAll();
        return users;
    }
    
    public User get(String email, String firstname, String lastname) throws Exception {
        UserDB userDB = new UserDB();
        User user = userDB.get(email);
        return user;
    }
    
     public void insert(String email, boolean active, String firstname, String lastname, String password, int role) throws Exception {
        User user = new User(email, active, firstname, lastname, password, role);
        UserDB userDB = new UserDB();
        userDB.insert(user);
    }
    
    public void update(String email,boolean active, String firstname,String lastname, String password, int role) throws Exception {
        User user = new User(email,active,firstname,lastname,password,role);
        UserDB userDB = new UserDB();
        userDB.update(user);
    }
    
    public void delete(String email, String fName, String lName) throws Exception {
        User user = new User();
        user.setEmail(email);
        UserDB userDB = new UserDB();
        userDB.delete(user);
    }

    public void insert(User uADD) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
