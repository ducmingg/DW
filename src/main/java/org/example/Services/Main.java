package org.example.Services;

import java.io.IOException;
import java.util.concurrent.CompletableFuture;

public class Main {
    public static void main(String[] args) throws IOException {
        String[] encodedProvinces = {
                "An+Giang",
                "B%C3%A0+R%E1%BB%8Ba+-+V%C3%B9ng+T%C3%A0u"
        };
        for (int i = 0; i < encodedProvinces.length; i++) {
            DataWeather dw = new DataWeather(encodedProvinces[i]);
        }
    }
}
