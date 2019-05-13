package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import readers.Config;

public class DataBase {
	
	public static void InsertTable(String name) throws ClassNotFoundException, SQLException {
		Class.forName("org.h2.Driver");
		Connection conn = DriverManager.getConnection(
				"jdbc:h2:file:" + System.getProperty("user.dir") + "src\\test\\resources\\DataBaseH2\\BarrigaDB",
				"sa", "");
		Statement stmt = conn.createStatement();
		String sqlInsert = "INSERT INTO " + name + " (URL, USER, EMAIL, SENHA, NOME, TIPO_MOVIMENTAÇÃO, "
				+ "DESCRIÇÃO, INTERESSADO, VALOR, CONTA) "
				+ "VALUES ('https://seubarriga.wcaquino.me/login', 'tester','tester@sempreit.com.br', "
				+ "'tester', 'Gasolina', 'Receita', 'Testes', 'Roberto', '150', 'Gasolina');";
		stmt.execute(sqlInsert);
	}

	public static ResultSet SelectTable(Statement stmt, String name) throws ClassNotFoundException, SQLException {
		String sqlSelect = "SELECT * FROM " + name + ";";
		ResultSet resultSet = stmt.executeQuery(sqlSelect);
		return resultSet;
	}

	public static String returnData(String table, String coluna) throws ClassNotFoundException, SQLException {
		Class.forName("org.h2.Driver");
		Connection conn = DriverManager.getConnection("jdbc:h2:file:" + Config.getProperty("path.banco"), "sa", "");
		Statement stmt = conn.createStatement();
		String data = null;
		ResultSet resultSet = SelectTable(stmt, table);
		while (resultSet.next()) {
			data = resultSet.getString("URL");

		}

		stmt.close();
		conn.close();

		return data;
	}
}
