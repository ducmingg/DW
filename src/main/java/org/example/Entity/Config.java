package org.example.Entity;

import java.sql.Timestamp;

public class Config {
    int id;
    String author;
    String email;
    String file_name;
    String directory;
    String status;
    int flag;
    Timestamp time_stamp;
    String path_file;
    int is_processing;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public String getDirectory() {
        return directory;
    }

    public void setDirectory(String directory) {
        this.directory = directory;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public Timestamp getTime_stamp() {
        return time_stamp;
    }

    public void setTime_stamp(Timestamp time_stamp) {
        this.time_stamp = time_stamp;
    }

    public String getPath_file() {
        return path_file;
    }

    public void setPath_file(String path_file) {
        this.path_file = path_file;
    }

    public int getIs_processing() {
        return is_processing;
    }

    public void setIs_processing(int is_processing) {
        this.is_processing = is_processing;
    }

    public Config(int id, String author, String email, String file_name, String directory, String status, int flag, Timestamp time_stamp, String path_file, int is_processing) {
        this.id = id;
        this.author = author;
        this.email = email;
        this.file_name = file_name;
        this.directory = directory;
        this.status = status;
        this.flag = flag;
        this.time_stamp = time_stamp;
        this.path_file = path_file;
        this.is_processing = is_processing;
    }

    public Config() {
    }

    @Override
    public String toString() {
        return "Config{" +
                "id=" + id +
                ", author='" + author + '\'' +
                ", email='" + email + '\'' +
                ", file_name='" + file_name + '\'' +
                ", directory='" + directory + '\'' +
                ", status='" + status + '\'' +
                ", flag=" + flag +
                ", time_stamp=" + time_stamp +
                ", path_file='" + path_file + '\'' +
                ", is_processing=" + is_processing +
                '}';
    }
}
