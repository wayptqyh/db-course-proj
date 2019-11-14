package org.skywalker.entity;

import java.io.Serializable;

public class Permission implements Serializable {

    @Override
    public String toString() {
        return "Permission{" +
                "permissionId=" + permissionId +
                ", url='" + url + '\'' +
                ", description='" + description + '\'' +
                '}';
    }

    private Integer permissionId;
    private String url;
    private String description;

    public Permission() {}

    public Permission(Integer permissionId, String url, String description) {
        this.permissionId = permissionId;
        this.url = url;
        this.description = description;
    }

    public Integer getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Integer permissionId) {
        this.permissionId = permissionId == null ? null : permissionId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}
