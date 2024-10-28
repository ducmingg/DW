package org.example.Services;

import java.io.IOException;
import java.sql.Connection;

public class Runnable_DataWeather implements Runnable {
    static String[] encodedProvinces = {
            "An+Giang",
            "B%C3%A0+R%E1%BB%8Ba+-+V%C3%B9ng+T%C3%A0u",
            "B%C3%A1c+Giang",
            "B%C3%A1c+K%E1%BA%A1n",
            "B%C3%A9n+Tre",
            "B%C3%ACnh+%C4%90%E1%BB%8Bnh",
            "B%C3%ACnh+D%C6%B0%C6%A1ng",
            "B%C3%ACnh+Ph%C6%B0%E1%BB%9Bc",
            "C%C3%A0+Mau",
            "C%C3%A0n+Th%C6%A1",
            "Cao+B%C3%A0ng",
            "Đ%C3%A0+N%E1%BA%B9ng",
            "Đ%E1%BA%B9k+L%E1%BA%A1k",
            "Đ%E1%BA%B9k+N%C3%B4ng",
            "Đi%E1%BB%87n+Bi%C3%AAn",
            "Đ%C3%B4ng+Nai",
            "Đ%C3%B4ng+Th%C3%A1p",
            "Gia+Lai",
            "H%C3%A0+Giang",
            "H%C3%A0+Nam",
            "H%C3%A0+N%E1%BB%9Bi",
            "H%C3%A0+T%C3%ACnh",
            "H%E1%BA%A1i+Duong",
            "H%E1%BA%A1i+Ph%C3%B2ng",
            "H%C6%A1a+B%C3%ACnh",
            "H%C6%B0ng+Y%C3%AAn",
            "Kh%C3%A1nh+H%C3%B2a",
            "Ki%C3%AAn+Giang",
            "Kon+Tum",
            "Lai+Ch%C3%A2u",
            "L%C3%A2m+Đ%E1%BB%93ng",
            "L%E1%BA%B9ng+S%C6%A1n",
            "Long+An",
            "Nam+Đ%E1%BB%8Bnh",
            "Ngh%E1%BB%87+An",
            "Ninh+B%C3%ACnh",
            "Ninh+Th%C6%B0%E1%BB%9Bn",
            "Ph%C3%BA+Th%E1%BB%8F",
            "Ph%C3%BA+Y%C3%AAn",
            "Qu%C3%A0ng+B%C3%ACnh",
            "Qu%C3%A0ng+Nam",
            "Qu%C3%A0ng+Ng%C3%A3i",
            "Qu%C3%A0ng+Ninh",
            "S%C3%B3c+Tr%C3%A2ng",
            "S%C6%A1n+La",
            "T%C3%A2y+Ninh",
            "Th%C3%A1i+B%C3%ACnh",
            "Th%C3%A1i+Nguy%C3%AAn",
            "Thanh+H%C3%B3a",
            "Th%C6%B0a+Thi%C3%AAn+Hu%E1%BA%BF",
            "Ti%E1%BB%81n+Giang",
            "Tr%C3%A0+Vinh",
            "Tuy%C3%AAn+Quang",
            "V%C4%A9nh+Long",
            "V%C4%A9nh+Ph%C3%B3c",
            "Y%C3%AAn+B%C3%A1i"
    };

    @Override
    public void run() {
        for (int i = 0; i < encodedProvinces.length; i++
        ) {
            try {
                System.out.println(Thread.currentThread().getName() + " đang chạy: " + i);
                DataWeather dw = new DataWeather(encodedProvinces[i]);
                dw.saveToCsv();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
//        for (int i = 0; i < 5; i++) {
//            System.out.println(Thread.currentThread().getName() + " đang chạy: " + i);
//            try {
//                Thread.sleep(500); // Giả lập công việc bằng cách ngủ trong 500ms
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }
//        }

    }
}
