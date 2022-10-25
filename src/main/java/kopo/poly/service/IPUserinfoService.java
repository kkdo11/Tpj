package kopo.poly.service;

import kopo.poly.dto.PUserDTO;

public interface IPUserinfoService {

    int insertUserinfo(PUserDTO pDTO) throws Exception;

    PUserDTO getUserExists(PUserDTO pDTO) throws Exception;
}
