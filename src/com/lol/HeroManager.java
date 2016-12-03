package com.lol;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.lol.Hero;

public class HeroManager {

	private Hero hero;
	private List<Hero> heroes;

	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	private PreparedStatement ps;

	// 根据id查找一个英雄
	public Hero findOne(int id) {

		conn = getConnetion();

		try {

			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from hero where id = " + id);

			hero = new Hero(id);

			while (rs.next()) {
				hero.setName(rs.getString("name"));
				hero.setNickName(rs.getString("nick_name"));
				hero.setImage(rs.getString("image"));
				hero.setAvatar(rs.getString("avatar"));
				hero.setDesc(rs.getString("description"));
			}

			rs.close();
			stmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return hero;

	}

	// 查找所有英雄，返回数组
	public List<Hero> findAll() {
		conn = getConnetion();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from hero");
			heroes = new ArrayList<Hero>();

			while (rs.next()) {
				hero = new Hero();

				hero.setId(rs.getInt("id"));
				hero.setName(rs.getString("name"));
				hero.setNickName(rs.getString("nick_name"));
				hero.setImage(rs.getString("image"));
				hero.setAvatar(rs.getString("avatar"));
				hero.setDesc(rs.getString("description"));

				heroes.add(hero);

			}

			rs.close();
			stmt.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return heroes;

	}

	// 增加一个英雄
	public void add(Hero hero) {
		String sql = "insert into hero(name, nick_name, avatar, image, description) values(?, ?, ?, ?, ?)";
		conn = getConnetion();

		try {
			ps = conn.prepareStatement(sql);

			ps.setString(1, hero.getName());
			ps.setString(2, hero.getNickName());
			ps.setString(3, hero.getImage());
			ps.setString(4, hero.getAvatar());
			ps.setString(5, hero.getDesc());

			ps.executeUpdate();
			ps.close();
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	/**
	 * 
	 * @param hero
	 */
	public void modify(Hero hero) {

		String sql = "update hero set name = ?, nick_name = ?, avatar = ?, image = ?, description = ? where id = ?";

		conn = getConnetion();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, hero.getName());
			ps.setString(2, hero.getNickName());
			ps.setString(3, hero.getAvatar());
			ps.setString(4, hero.getName());
			ps.setString(5, hero.getDesc());
			ps.setInt(6, hero.getId());

			// 执行查询。

			ps.executeUpdate();

			ps.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	private Connection getConnetion() {
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/lol?characterEncoding=utf-8";
		String user = "root";
		String password = "";

		try {
			Class.forName(driverName);
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public HeroManager() {

	}
}
