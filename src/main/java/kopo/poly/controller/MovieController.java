package kopo.poly.controller;

import kopo.poly.service.IMovieService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Slf4j
@RequestMapping(value="/movie")
@Controller
public class MovieController {

    @Resource(name = "MovieService")
    private IMovieService movieService;

   @GetMapping(value="collectMovieRank")
    public String collectMovieRank(ModelMap model) throws Exception{
       log.info(this.getClass().getName()+ ".collectMovieRank Start");

       int res = movieService.collectMovieRank();

       model.addAttribute("res", String.valueOf(res));

       log.info(this.getClass().getName()+ ".collectMovieRank End");
       return "/movie/RankForWEB";

   }
}
