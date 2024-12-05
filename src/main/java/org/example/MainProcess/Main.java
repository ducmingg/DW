//package org.example.MainProcess;
//
//import org.example.Controller.Controller;
//import org.example.Entity.Config;
//import org.example.Services.HandleConfig;
//
//import java.sql.SQLOutput;
//import java.util.List;
//
//public class Main {
//    public static void main(String[] args) throws InterruptedException {
////        1+2+3.load cac thuoc tinh trong properties va ket noi den database control
//        HandleConfig handleConfig = new HandleConfig();
//        Controller controller = new Controller();
//        try {
////        4.Lay danh sach config trong table co flag = 1
//            List<Config> configs = handleConfig.getConfig();
////        5.Lay ra tung config
//            for (Config config : configs) {
//                int maxWait = 0;
////        7. Khi có processing nào chạy và thời gian dưới 3 phút
//                while (handleConfig.countProcessing() != 0 && maxWait <= 3) {
//                    System.out.println("Waiting...");
//                    maxWait++;
//                    Thread.sleep(10000);
//                }
////            9.Kiểm tra xem còn processing nào đang chạy không
//                if (handleConfig.countProcessing() == 0) {
////                    System.out.println("Start process");
////                10.Lay ra status cua config do
//                    String status = config.getStatus();
//                    System.out.println("********************************************************************");
//                    if (status.equals("ERROR")) continue;
////                    11.Kiểm tra xem status có phải là OFF hay FINISHED hay không
//                    else if (status.equals("OFF") || status.equals("FINISHED")) {
//                        System.out.println("START: CRAWL");
//                        System.out.println("CONFIG:" + status);
//                        controller.crawlData();
//                        System.out.println("END: CRAWL");
//                        System.out.println("********************************************************************");
////                    } else if (status.equals("CRAWLED")) {
//                    } else if (handleConfig.checkStatus(config.getId() - 1, "CRAWLED")) {
//                        System.out.println("START: LOAD TO STAGING");
//                        System.out.println("CONFIG:" + status);
//                        controller.loadToStaging();
//                        System.out.println("END: LOAD TO STAGING");
//                        System.out.println("********************************************************************");
////                    } else if (status.equals("EXTRACTED")) {
//                    } else if (handleConfig.checkStatus(config.getId() - 1, "EXTRACTED")) {
//                        System.out.println("START: LOAD TO WAREHOUSE");
//                        System.out.println("CONFIG:" + status);
//                        controller.loadToWarehouse();
//                        System.out.println("END LOAD TO WAREHOUSE");
//                        System.out.println("********************************************************************");
////                    } else if (status.equals("WH_LOADED")) {
//                    } else if (handleConfig.checkStatus(config.getId() - 1, "WH_LOADED")) {
//                        System.out.println("START: LOAD TO DATAMART");
//                        System.out.println("CONFIG:" + status);
//                        controller.loadToDataMart();
//                        System.out.println("END: LOAD TO DATAMART");
//                    }
////                    System.out.println("End process");
//                }
//            }
//            //6. close db connection
//            handleConfig.getConn().close();
//        } catch (Exception e) {
//            throw new InterruptedException();
//        }
//
//
//    }
//}
