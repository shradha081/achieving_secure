/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.minds;

/**
 *
 * @author java4
 */
import java.io.File;
import java.io.FileInputStream;
import org.apache.commons.net.ftp.FTPClient;
public class Ftpcon {
    FTPClient client = new FTPClient();
    FileInputStream fis = null;
    boolean status;

public boolean upload(File file){
	
	System.out.println("Enter Upload form");
   try{
//           client.enterLocalPassiveMode();
            client.connect("ftp.drivehq.com");
       
            client.login("mindsnxt", "mindsnxt@123$");
            client.enterLocalPassiveMode();
             //String filename = "/home/ibn/Desktop/report.txt";
             fis = new FileInputStream(file);
             
             status= client.storeFile(" /RDPC/"+file.getName(), fis);
       
             client.logout();
             fis.close();
    
}
catch(Exception e){
    System.out.println(e);
}
        if(status){
             System.out.println("success");
             return true;
        }
        else{
            System.out.println("failed");
            return false;
          
        }
    
} 

   
}

