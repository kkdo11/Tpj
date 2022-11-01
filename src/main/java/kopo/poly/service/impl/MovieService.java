package kopo.poly.service.impl;


import kopo.poly.dto.MovieDTO;
import kopo.poly.persistance.mapper.IMovieMapper;
import kopo.poly.service.IMovieService;
import kopo.poly.util.CmmUtil;
import kopo.poly.util.DateUtil;
import lombok.extern.slf4j.Slf4j;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.Iterator;

@Slf4j
@Service("MovieService")
public class MovieService implements IMovieService{

    private final IMovieMapper movieMapper;

    public MovieService(IMovieMapper movieMapper) {
        this.movieMapper=movieMapper;
    }
    @Transactional
    @Override

    public int collectMovieRank() throws Exception{

        log.info(this.getClass().getName()  + "collectMovieRank Start");
        int res=0;

        String url = "http://www.cgv.co.kr/movies/";

        Document doc = null;

        doc = Jsoup.connect(url).get();

        Elements element = doc.select("div.sect-movie-chart");

        Iterator<Element>movie_rank= element.select("strong.rank").iterator();
        Iterator<Element>movie_name  = element.select("strong.title").iterator();
        Iterator<Element>movie_reserve  = element.select("strong.percent span").iterator();
        Iterator<Element>score = element.select("span.percent").iterator();
        Iterator<Element>open_day  = element.select("span.txt-info").iterator();

        MovieDTO pDTO=null;

        while(movie_rank.hasNext()) {
            pDTO=new MovieDTO();
            pDTO.setCollect_time(DateUtil.getDateTime("yyyymmddhhss"));


            String rank = CmmUtil.nvl(movie_rank.next().text()).trim();
            pDTO.setMovie_rank(rank.substring(3, rank.length()));

            pDTO.setMovie_nm(CmmUtil.nvl(movie_name.next().text()).trim());

            pDTO.setMovie_reserve(CmmUtil.nvl(movie_reserve.next().text()).trim());

            pDTO.setScore(CmmUtil.nvl(score.next().text()).trim());

            pDTO.setOpen_day(CmmUtil.nvl(open_day.next().text()).trim());

            pDTO.setReg_id("admin");

            res += movieMapper.InsertMovieInfo(pDTO);
        }
            log.info(this.getClass().getName() + "collectMovieRank End");

            return res;
        }

}
