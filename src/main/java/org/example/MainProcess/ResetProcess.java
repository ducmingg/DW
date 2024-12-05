//package org.example.MainProcess;
//
//import org.example.Controller.Controller;
//import org.example.Entity.Config;
//import org.example.Services.HandleConfig;
//
//import java.util.List;
//
//public class ResetProcess {
//    public static void main(String[] args) {
//        HandleConfig handleConfig = new HandleConfig();
//        if (handleConfig.checkStatus(1, "ERROR")) {
//            handleConfig.start_process();
//            handleConfig.reset_process();
//        } else if (!handleConfig.checkStatus(2, "EXTRACTED")) {
//            handleConfig.start_process();
//            handleConfig.reset_at_staging();
//        } else if (!handleConfig.checkStatus(3, "WH_LOADED")) {
//            handleConfig.start_process();
//            handleConfig.reset_at_warehouse();
//        } else if (!handleConfig.checkStatus(4, "MLOADED")) {
//            handleConfig.start_process();
//            handleConfig.reset_at_datamart();
//        }
//    }
//}
