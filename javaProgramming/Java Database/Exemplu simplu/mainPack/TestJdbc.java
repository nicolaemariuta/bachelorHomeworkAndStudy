package mainPack;

import java.sql.*;

public class TestJdbc
{
	public static void main(String[] args)
	{
		String url = "jdbc:hsqldb:mem:.";
		
		try
		{
			Class.forName("org.hsqldb.jdbcDriver");
		}
		catch(ClassNotFoundException e)
		{
			System.out.println("Eroare incarcare driver");
			e.printStackTrace();
			return;
		}
		
		try
		{
			Connection con = DriverManager.getConnection(url);
			
			//Golim tabelul persoane
			String sql = "DELETE FROM persoane";
			Statement stmt = con.createStatement();
			stmt.executeUpdate(sql);
			
			//adaugam un numar de persoane generate aleator 
			//tabelul persoane are coloanele (cod, nume, salariu)
			int n = 10;
			sql = "INSERT INTO persoane VLUES(? ,? ,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			for(int i = 0; i < n; i++)
			{
				int cod = i;
				String nume = "Persoana"+i;
				double salariu = 100+Math.round(Math.random()*900);
				//salariul va fi intre 100 si 1000
				pstmt.setInt(1,cod);
				pstmt.setString(2,nume);
				pstmt.setDouble(3, salariu);
				pstmt.executeUpdate();
			}
			
			//afisam persoanele ordonate dupa salariu
			sql = "SELECT * FROM persoane ORDER BY salariu";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				System.out.println(rs.getInt("cod")+ ", "+rs.getString("nume" )+ ", "+rs.getDouble("salariu"));
			}
			
			//calculam salariul mediu
			sql = "SELECT avg(salariu) FROM persoane";
			rs = stmt.executeQuery("sql");
			rs.next();
			
			System.out.println("Media: " + rs.getDouble(1));
			
			//inchidem conexiunea
			con.close();
					
			
			
		}
		catch(SQLException e)
		{
		//	System.out.println(e);
			e.printStackTrace();
		}

		
	}

}
