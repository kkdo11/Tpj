package kopo.poly.controller;

import kopo.poly.dto.EmerLocRowDTO;
import kopo.poly.dto.EmerRowDTO;
import kopo.poly.service.IEmerLocService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

import java.util.List;


@Slf4j
@RequestMapping(value = "Emer")
@Controller
public class EmerLocController {

    @Resource(name = "EmerLocService")
    private IEmerLocService emerService;

    @ResponseBody
    @GetMapping(value = "/getEmerLoc")
    public List<EmerLocRowDTO> getEmer() throws Exception {
        log.info(this.getClass().getName() + "getEmerLoc START");

        List<EmerLocRowDTO> eList = emerService.getLoc();
        log.info("첫번째 확인 : " + eList.get(0).getDutyName());
        log.info(this.getClass().getName() + "getEmerLoc END");

        return eList;

    }

    @GetMapping(value = "EmerLoc")
    public String EmerInfo() {
        log.info(this.getClass().getName() + "EmerInfo success");
        return "Emer/EmerLoc";
    }
}




