package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Free;
import kr.co.teaspoon.dto.Survey;
import kr.co.teaspoon.service.SurveyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/survey/*")
public class SurveyController {
    @Autowired
    private SurveyService surveyService;

    @GetMapping("list.do")
    public String getsurveyList(Model model) throws Exception {
        List<Survey> surveyList = surveyService.surveyList();
        model.addAttribute("surveyList", surveyList);
        return ("/survey/surveyList");
    }

    @GetMapping("detail.do")
    public String getsurveyDetail(HttpServletRequest request, Model model) throws Exception {
        int sno = Integer.parseInt(request.getParameter("sno"));
        Survey dto = surveyService.surveyDetail(sno);
        model.addAttribute("dto", dto);
        return ("/survey/surveyDetail");
    }

    @GetMapping("insert.do")
    public String getsurveyInsertForm(Model model) throws Exception {
        return "/survey/surveyInsert";
    }

    @PostMapping("insert.do")
    public String getsurveyWrite(HttpServletRequest request, Model model) throws Exception {
        Survey dto = new Survey();
        dto.setTitle(request.getParameter("title"));
        dto.setQ1(request.getParameter("q1"));
        dto.setQ2(request.getParameter("q2"));
        dto.setQ3(request.getParameter("q3"));
        dto.setQ4(request.getParameter("q4"));
        dto.setQ5(request.getParameter("q5"));
        dto.setQ6(request.getParameter("q6"));
        dto.setQ7(request.getParameter("q7"));
        dto.setQ8(request.getParameter("q8"));
        dto.setQ9(request.getParameter("q9"));
        dto.setQ10(request.getParameter("q10"));
        surveyService.surveyInsert(dto);
        return "redirect:list.do";
    }

   @PostMapping("sanswerInsert.do")
    public String getsanserInsert(HttpServletRequest request, Model model) throws Exception {
       Survey dto = new Survey();
       dto.setPar(Integer.parseInt(request.getParameter("sno")));
       dto.setTitle(request.getParameter("title"));
       dto.setAuthor(request.getParameter("sid"));
       dto.setAns(Integer.parseInt(request.getParameter("ans")));
       surveyService.sanswerInsert(dto);
       return "redirect:list.do";
   }
}
