//package kopo.poly.service.impl;
//
//import kopo.poly.dto.PUserDTO;
//import kopo.poly.persistance.mapper.IPUserinfoMapper;
//import kopo.poly.service.IPUserinfoService;
//import kopo.poly.util.CmmUtil;
//import lombok.RequiredArgsConstructor;
//import lombok.extern.slf4j.Slf4j;
//import org.springframework.stereotype.Service;
//
//@Slf4j
//@RequiredArgsConstructor
//@Service("PUserService")
//public class PUserService implements IPUserinfoService {
//
//    private final IPUserinfoMapper userinfoMapper;
//
//    @Override
//    public int insertUserinfo(PUserDTO pDTO) throws Exception {
//        int res = 0;
//
//        if(pDTO== null){
//            pDTO = new PUserDTO();
//        }
//
//        PUserDTO rDTO = userinfoMapper.getUserExists(pDTO);
//
//        if(rDTO == null){
//            rDTO = new PUserDTO();
//        }
//
//        if(CmmUtil.nvl(rDTO.getExists_yn()).equals("Y"))){
//            res = 2;
//        } else {
//            int success = userinfoMapper.insertUserinfo(pDTO);
//        }
//
//
//    }
//
//
//
//
//
//
//
//
//    @Override
//    public PUserDTO getUserExists(PUserDTO pDTO) throws Exception {
//        return null;
//    }
//}
