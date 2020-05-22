package com.itpm.controller;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

public class PDFService {

	public static void main(String[] args) throws IOException {
		try {
		    final ZipFile zipFile = new ZipFile("C:\\Users\\dilak\\Desktop\\hello.zip");
		    final Enumeration<? extends ZipEntry> entries = zipFile.entries();
		    ZipInputStream zipInput = null;

		    while (entries.hasMoreElements()) {
		        final ZipEntry zipEntry = entries.nextElement();
		        if (!zipEntry.isDirectory()) {
		            final String fileName = zipEntry.getName();
		            if (fileName.endsWith(".txt")) {
		                zipInput = new ZipInputStream(new FileInputStream("C:\\Users\\dilak\\Desktop\\" + fileName));
		                InputStream input = zipFile.getInputStream(zipEntry);
		                BufferedReader rf = new BufferedReader(new InputStreamReader(input, "UTF-8"));
		                String line;
		                while((line = rf.readLine()) != null) {
		                    System.out.println(line);
		                }
		                rf.close();
		                zipInput.closeEntry();
		            }
		        }
		    }
		    zipFile.close();
		}
		catch (final IOException ioe) {
		    System.err.println("Unhandled exception:");
		    ioe.printStackTrace();
		    return;
		}
	}

}
