package fr.ganfra.realm;

import io.realm.RealmObject;

/* DO NOT EDIT | Generated by dbgenerator */

public class FidelityCard extends RealmObject {

    public interface Attributes {
        String IDENTIFIER = "identifier";
        String POINTS = "points";
    }

    public interface Relationships {
        String USER = "user";
    }

    private short identifier;
    private int points;
    private User user;

    public short getIdentifier() {
        return identifier;
    }

    public void setIdentifier(final short identifier) {
        this.identifier = identifier;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(final int points) {
        this.points = points;
    }

    public User getUser() {
        return user;
    }

    public void setUser(final User user) {
        this.user = user;
    }
}
