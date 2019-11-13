package org.skywalker.mapper.impl;

import org.skywalker.entity.Actor;
import org.skywalker.mapper.ActorDao;
import org.skywalker.mapper.DaoBase;

import java.sql.Connection;
import java.sql.SQLException;

public class ActorDaoImpl extends DaoBase implements ActorDao {

    public int deleteByPrimaryKey(Integer actorid) {
        sql = "delete from actor where actor_id=?";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, actorid);
            ret = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            endExecution();
        }
        return ret;
    }

    public int insert(Actor actor) {
        sql = "insert into actor (actor_id, name, sex, homeplace, birthday, occupation, alias, imdb_id)" +
                " values(?,?,?,?,?,?,?,?)";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, actor.getActorId());
            ps.setString(2, actor.getName());
            ps.setString(3, actor.getSex());
            ps.setString(4, actor.getHomeplace());
            ps.setString(5, actor.getBirthday());
            ps.setString(6, actor.getOccupation());
            ps.setString(7, actor.getAlias());
            ps.setString(8, actor.getImdbId());
            ret = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            endExecution();
        }
        return ret;
    }

    public Actor selectByPrimaryKey(Integer actorId) {
        Actor actor = new Actor();
        sql = "select * from actor where actor_id=?";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, actorId);
            rs = ps.executeQuery();
            if (rs.next()) {
                actor.setActorId(rs.getInt("actor_id"));
                actor.setName(rs.getString("name"));
                actor.setSex(rs.getString("sex"));
                actor.setHomeplace(rs.getString("homeplace"));
                actor.setBirthday(rs.getString("birthday"));
                actor.setOccupation(rs.getString("occupation"));
                actor.setAlias(rs.getString("alias"));
                actor.setImdbId(rs.getString("imdb_id"));

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            endExecutionRet();
        }

        return actor;
    }

    public int updateByPrimaryKey(Actor actor) {
        sql = "update actor set name=?,sex=?,homeplace=?,birthday=?,occupation=?,alias=?,imdb_id=? where actor_id=?";
        try {
            conn = getConnection();
            ps = conn.prepareStatement(sql);

            ps.setString(1, actor.getName());
            ps.setString(2, actor.getSex());
            ps.setString(3, actor.getHomeplace());
            ps.setString(4, actor.getBirthday());
            ps.setString(5, actor.getOccupation());
            ps.setString(6, actor.getAlias());
            ps.setString(7, actor.getImdbId());
            ps.setInt(8, actor.getActorId());

            ret = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            endExecution();
        }
        return ret;
    }
}
