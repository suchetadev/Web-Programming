/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import classes.User;
import java.util.List;

/**
 *
 * @author dan.marconett
 */
public class ValidateUtils {

    public static boolean validateUser(User user) {

        boolean status = false;

        List<User> users = UserUtils.getUsers();
        for (User u : users) {

            if (u.getEmail().equals(user.getEmail())
                    && u.getPassword().equals(user.getPassword())) {
                status = true;
            }
        }
        return status;
    }
}
