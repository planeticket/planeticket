package com.jnmd.liuwan.controller.user;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jnmd.liuwan.domain.Contact;
import com.jnmd.liuwan.domain.Passenger;
import com.jnmd.liuwan.domain.PlaneRoute;
import com.jnmd.liuwan.service.ContactService;
import com.jnmd.liuwan.service.PassengerService;
import com.jnmd.liuwan.service.PlaneRouteService;


@Controller
@Scope("prototype")
public class PassengerController {
    @Resource
    private PassengerService passengerService;
    @Resource
    private ContactService contactService;
    @Resource
    private PlaneRouteService planeRouteService;
    @RequestMapping("/SaveController")

    public ModelAndView savePassenger(HttpServletRequest request,Passenger pass,String tid,String birthday,Contact contact,PlaneRoute planeRoute,String sheng,String shi,String qu) throws ParseException {
        HttpSession session = request.getSession();
        ModelAndView mv = new ModelAndView();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
        Date psgBirthday=sf.parse(birthday);
        pass.setPsgBirthday(psgBirthday);
        pass.setUid(10);
        contact.setUid(10);
        planeRoute.setUid(10);
        String address = sheng+shi+qu;
        planeRoute.setPrAddress(address);
        System.out.println(pass);
        System.out.println(tid);
        System.out.println(contact);
        System.out.println(planeRoute);
        
        session.setAttribute("contact", contact);
        session.setAttribute("planeRoute", planeRoute);
        passengerService.savePassenger(pass);
        contactService.saveContact(contact);
        
        mv.setViewName("ticket04");
        mv.addObject("ps", pass);
        return mv;
    }

    /*public Map<String, String> validate(Passenger passenger,Contact contact,PlaneRoute planeRoute) {
        Map<String, String> map = new HashMap<String, String>();
        if (null == passenger.getPsgName() || passenger.getPsgName().trim().equals("")) {
            map.put("psgNameError", "乘机人姓名必须输入!");
        } else if (passenger.getPsgName().trim().length() < 2) {
            map.put("psgNameError", "用户名长度不能少于2个!");
        }
        if (0 == passenger.getTid()) {
            map.put("userTypeError", "乘机人类型必须选择!");
        } 
        if (0 == passenger.getPsgSex()) {
            map.put("psgSexError", "请选择性别!");
        } 
        if (null == passenger.getPsgCountry() || passenger.getPsgCountry().trim().equals("")) {
            map.put("psgCountryError", "请输入国籍!");
        } 
        if (null == passenger.getPsgBirthday()) {
            map.put("psgBirthdayError", "请输入出生日期!");
        }
        if (null == passenger.getPsgPaper() || passenger.getPsgPaper().trim().equals("")) {
            map.put("psgCountryError", "请选择证件类型!");
        } 
        if (null == passenger.getPsgPapercode() || passenger.getPsgPapercode().trim().equals("")) {
            map.put("psgPapercodeError", "请输入证件号!");
        } 
        if (null == contact.getContactName() ||contact.getContactName().trim().equals("")) {
            map.put("contactNameError", "联系人姓名必须输入!");
        } else if (passenger.getPsgName().trim().length() < 2) {
            map.put("contactNameError", "联系人姓名长度不能少于2个!");
        }
        
        if (null == contact.getContactPhone() ||contact.getContactPhone().trim().equals("")) {
            map.put("contactPhoneError", "联系人电话必须输入!");
        } else if (contact.getContactPhone().trim().length() !=11) {
            map.put("contactPhoneError", "联系人电话格式不对!");
        }
        if (null == planeRoute.getPrReceive() ||planeRoute.getPrReceive().trim().equals("")) {
            map.put("prReceiveError", "收件人姓名必须输入!");
        } else if (planeRoute.getPrReceive().trim().length() < 2) {
            map.put("prReceiveError", "收件人姓名长度不能少于2个!");
        }
        if (null == planeRoute.getPrPhone() ||planeRoute.getPrPhone().trim().equals("")) {
            map.put("", "联系人电话必须输入!");
        } else if (contact.getContactPhone().trim().length() !=11) {
            map.put("prPhoneError", "联系人电话格式不对!");
        }
        if (null == planeRoute.getPrAddress() ||planeRoute.getPrAddress().trim().equals("")) {
            map.put("prAddressError", "请选择配送地址!");
        }
        if (null == planeRoute.getPrPostcode() ||planeRoute.getPrPostcode().trim().equals("")) {
            map.put("prPostCodeError", "请输入邮政编码!");
        } else if (planeRoute.getPrReceive().trim().length() != 6) {
            map.put("prPostCodeError", "邮政编码格式不对!");
        }
        
        if (null == planeRoute.getPrInvoiceType() ||planeRoute.getPrInvoiceType().trim().equals("")) {
            map.put("prInvoiceTypeError", "请输入发票类型!");
        }
        
        if (null == planeRoute.getPrInvoiceTitle() ||planeRoute.getPrInvoiceTitle().trim().equals("")) {
            map.put("prInvoiceTitleError", "发票抬头必须输入!");
        } else if (planeRoute.getPrInvoiceTitle().trim().length() < 2) {
            map.put("prInvoiceTitleError", "发票抬头长度不能少于2个!");
        }
        return map;
    }*/
}
