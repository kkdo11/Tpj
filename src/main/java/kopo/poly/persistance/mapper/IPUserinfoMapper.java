package kopo.poly.persistance.mapper;

import kopo.poly.dto.PUserDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IPUserinfoMapper {

    int insertUserinfo(PUserDTO pDTO) throws Exception;

    PUserDTO getUserExists(PUserDTO pDTO)throws Exception;

}
