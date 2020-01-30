package org.launchcode.javawebdevtechjobspersistent.models;

import javax.persistence.Entity;
import javax.validation.constraints.Size;

@Entity
public class Skill extends AbstractEntity {

    @Size(max = 250, message = "Description is limited to 250 maximum characters.")
    private String description;

    public Skill(String description) {
        this.description = description;
    }

    public Skill() { }

    public String getDescription() { return description; }

    public void setDescription(String description) { this.description = description; }
}