package kopo.poly.persistance.mapper;

import kopo.poly.dto.MovieDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IMovieMapper {
    int InsertMovieInfo(MovieDTO pDTO) throws Exception;
}
