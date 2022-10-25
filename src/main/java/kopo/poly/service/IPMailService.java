package kopo.poly.service;

import kopo.poly.dto.MailDTO;
import kopo.poly.dto.NoticeDTO;

public interface IPMailService {

    int pdoSendMail(MailDTO pDTO);
}
