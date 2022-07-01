
package models;

import java.io.Serializable;

/**
 *
 * @author mehar
 */
public class Role implements Serializable {
    
     private int roleId;
    private String roleName;
    
    public Role() {
        roleId = 0;
        roleName = "";
        
    }   
    public Role(int roleId, String roleName) {
        this.roleId = roleId;
        this.roleName = roleName;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
    
    
}
