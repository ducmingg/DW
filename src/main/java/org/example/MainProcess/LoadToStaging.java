package org.example.MainProcess;

import org.example.Controller.Controller;
import org.example.Entity.Config;
import org.example.Services.HandleConfig;

import java.util.List;

public class LoadToStaging {
    public static void main(String[] args) {
//        1+2+3.load cac thuoc tinh trong properties va ket noi den database control
        HandleConfig handleConfig = new HandleConfig();
        Controller controller = new Controller();
        try {
//        4.Lay danh sach config trong table co flag = 1
            List<Config> configs = handleConfig.getConfig();
//        5.Lay ra tung config
            for (Config config : configs) {
                int maxWait = 0;
//        7. Khi có processing nào chạy và thời gian dưới 3 phút
                while (handleConfig.countProcessing() != 0 && maxWait <= 3) {
                    System.out.println("Waiting...");
                    maxWait++;
                    Thread.sleep(2000);
                }
//            9.Kiểm tra xem còn processing nào đang chạy không
                if (handleConfig.countProcessing() == 0) {
//                10.Lay ra status cua config do
                    String status = config.getStatus();
//                    11.Kiểm tra xem status có phải là OFF hay FINISHED hay không
                    if (handleConfig.checkStatus(config.getId() - 1, "CRAWLED")) {
                        System.out.println("START: LOAD TO STAGING");
                        controller.loadToStaging();
                        System.out.println("END: LOAD TO STAGING");
                    }
                }
            }
            //6. close db connection
            handleConfig.getConn().close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
