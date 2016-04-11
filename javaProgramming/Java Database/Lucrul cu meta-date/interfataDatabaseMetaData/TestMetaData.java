package interfataDatabaseMetaData;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

//afiseaza numele tuturor tabelelor dintr-o baza de date inregistrata in ODBC

public class TestMetaData
{
	public static void main(String[] args) 
	{
		String url = "jdbc:obdc:test";
		
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcObdcDriver");
			
		}
		catch(ClassNotFoundException e)
		{
			System.out.println("Eroare incarcare driver " + e);
			e.printStackTrace();
			return;
		}
		
		try
		{
			Connection con = DriverManager.getConnection(url);
			DatabaseMetaData dbmd = con.getMetaData();
			ResultSet rs = dbmd.getTables(null, null, null, null);
			
			while(rs.next())
			{
				System.out.println(rs.getString("TABLE_NAME"));
			}
			con.close();
		}
		
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
	}

}
