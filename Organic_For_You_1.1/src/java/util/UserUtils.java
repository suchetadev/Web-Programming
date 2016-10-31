/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import classes.User;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dan.marconett
 */
public class UserUtils {

    public static List<User> getUsers() {
        List<User> users = new ArrayList<User>();
        User user = new User("sucheta", "patil", "sucheta@gmail.com", "", "", "", "", "1234", "");
        users.add(user);

        return users;
    }
}
