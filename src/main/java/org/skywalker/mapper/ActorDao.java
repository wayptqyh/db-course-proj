package org.skywalker.mapper;

import org.skywalker.entity.Actor;

public interface ActorDao {
    int deleteByPrimaryKey(Integer actorid);
    int insert(Actor actor);
    Actor selectByPrimaryKey(Integer actorId);
    int updateByPrimaryKey(Actor actor);
}
