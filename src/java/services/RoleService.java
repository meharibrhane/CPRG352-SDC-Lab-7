
package services;

import dataaccess.RoleDB;
import java.util.List;
import models.Role;
/**
 *
 * @author mehar
 */
public class RoleService {
    
      public List<Role> getAll() throws Exception {
        RoleDB roleDB = new RoleDB();
        List<Role> users = roleDB.getAll();
        return users;
    }
}
