package org.skywalker.entity;

import java.io.Serializable;

public class Moive implements Serializable {
    @Override
    public String toString() {
        return "Moive{" +
                "moiveId=" + moiveId +
                ", name='" + name + '\'' +
                ", rate=" + rate +
                ", imdbId='" + imdbId + '\'' +
                ", alias='" + alias + '\'' +
                '}';
    }

    private Integer moiveId;
    private String name;
    private Float rate;
    private String imdbId;
    private String alias;

    public Moive() {}

    public Moive(Integer moiveId, String name, Float rate, String imdbId, String alias) {
        this.moiveId = moiveId;
        this.name = name;
        this.rate = rate;
        this.imdbId = imdbId;
        this.alias = alias;
    }

    public Integer getMoiveId() {
        return moiveId;
    }

    public void setMoiveId(Integer moiveId) {
        this.moiveId = moiveId == null ? null : moiveId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Float getRate() {
        return rate;
    }

    public void setRate(Float rate) {
        this.rate = rate == null ? null : rate;
    }

    public String getImdbId() {
        return imdbId;
    }

    public void setImdbId(String imdbId) {
        this.imdbId = imdbId == null ? null : imdbId.trim();
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias == null ? null : alias.trim();
    }
}
