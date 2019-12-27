package org.skywalker.mapper.impl;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.skywalker.entity.Actor;
import org.skywalker.mapper.DaoFactory;

public class TestActor {
    Logger logger;
    DaoFactory factory;

    @Before
    public void setUpTest() {
        logger = Logger.getLogger(TestActor.class);
        factory = DaoFactory.getInstance();
    }

    @Test
    public void testSelectByPrimaryKey() {
        Actor actor = factory.getActorDao().selectByPrimaryKey(1);
        logger.info(actor);
    }

    @Test
    public void testDeleteByPrimaryKey() {
        int ret = factory.getActorDao().deleteByPrimaryKey(1);
        logger.info(ret);
    }

    @Test
    public void testInsert() {
        Actor actor = new Actor(3, "3", "3", "3", "3", "3", "3", "3");
        int ret = factory.getActorDao().insert(actor);
        logger.info(ret);
    }

    @Test
    public void testUpdateByPrimaryKey() {
        Actor actor = new Actor(3, "4", "4", "4", "4", "4", "4", "4");
        int ret = factory.getActorDao().updateByPrimaryKey(actor);
        logger.info(ret);
    }
}
