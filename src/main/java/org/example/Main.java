package org.example;

import org.example.Controller.Controller;
import org.example.Services.DataWeather;

import java.io.IOException;
import java.util.concurrent.CompletableFuture;

public class Main {
    public static void main(String[] args) throws IOException {
        Controller controller = new Controller();
        try {
//            controller.crawlData();
//            controller.loadToStaging();
            controller.loadToDateDim();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
