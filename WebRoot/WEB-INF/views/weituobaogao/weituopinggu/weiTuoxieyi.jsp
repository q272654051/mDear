<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
    <base href="<%=basePath%>">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>委托协议</title>
    <link rel="stylesheet" href="content/css/base.css"/>
	</head>
	<body>
		<section>
			<header class="header full-center">
    			<h3 class="title">委托评估</h3>
			</header>
			<div class="result-hd full-center">
				委托协议书
			</div>
			<article class="protocol">
				<p class="tit-btm">尊敬的客户：</p>
				<p class="t-in tit-btm">当您明确使用房估估第三方房地产在线估值综合服务平台进行委托评估时候，请您务必仔细阅读、检查委托协议书的内容；客户因自身的需要，通过使用房估估第三方房地产在线估值综合服务平台委托指定的评估机构，进行房地产评估作业，指定评估机构同意接受客户的委托。根据《中华人民共和国合同法》、《城镇土地估价规程》及《房地产估价规范》等相关文件规定，为明确双方的权利和义务，经双方友好协商，订立本委托协议书。</p>
				<p>一、委托评估目的</p>
				<p class="tit-btm t-in">客户通过登陆房估估第三方房地产在线估值综合服务平台，点击进入“委托评估”页面，明确填写其所需的估价目的，委托
指定评估机构对其所拥有的房地产进行价值评估，从而确定房屋价值。</p>
				<p>二、评估对象和评估范围</p>
				<p class="tit-btm t-in"> 评估的对象和范围，是客户事先登陆房估估第三方房地产在线估值综合服务平台，点击进入“委托评估”页面，具体详细填  
 写需要评估的房地产项目名称、详细地址、建筑面积和选择物业类型(住宅/商业办公)。</p>
 				<p>三、评估基准日</p>
 				<p class="tit-btm t-in"> 以客户同意本委托协议书，点击提交确认委托后，系统进入接受委托环节，指定评估机构通过系统接受委托，派遣相关评估人员进行实地勘察，实地勘察之日即为评估基准日。</p>
				<p>四、评估报告提交期限和方式</p>
				<p class=" t-in"> 客户应向指定的评估机构提供房地产评估所需的身份证复印件、房地产权属证明及其他相关资料。</p>
				<p class="tit-btm">指定的评估机构收到客户提供的全部资料后，在事先约定的工作时间内完成客户委托的评估工作，并向客户提交正式《房地产评估报告书》。
若客户不能及时提供资料，指定的评估机构提交报告的时间可以顺延；若因不可抗力因素需延长或提前完成评估工作，客户和指定评估机构双方需另行协商。</p>
				<p>五、客户的责任</p>
				<p>1、 客户应当根据评估业务需要，负责评估人员与相关当事方之间的协调。</p>
				<p>2、按约定日期为指定评估机构提供与评估相关的文件、资料，同时要对 
     提供文件、资料的真实性、完整性和合法性负责。</p>
				<p>3、指定评估机构的评估人员到客户现场作业，客户应积极配合，给予相
     关评估人员现场勘查所需的各项支持协助；客户或者产权持有者应当 
     对相关评估人员现场填写的勘察表，以签字方式行认。</p>
				<p class="tit-btm">4、恰当使用评估报告是客户的责任，未征得指定评估机构同意，评估报 
     告的内容不得被摘抄、引用或者披露于公开媒体，法律、法规定以及 
     相关当事方另有约定的除外。</p>
				<p>六、指定评估机构的责任</p>
				<p>1、在评估工作执行过程中，坚持独立、客观、公正的原则，认真执行法
     律和行政法规，对出具《房地产评估报告书》承担相应的责任。</p>
				<p>2、指定评估机构有义务指派专人指导客户，提供相关的评估资料,并应 
     作好与其他中介机构的协调工作；遵守房地产评估准则，对评估对象
     在评估基准日特定目的下的价值进行分析、估算并发表专业意见。</p>
				<p class="tit-btm">3、遵守职业道德，对客户提供的内部资料，严守秘密；未经客户书面许可，
     评估公司不得将评估报告的内容向第三方提供或者公开，法律、法规
     另有规定的除外。</p>
     			<p>七、委托协议书的中止或解除</p>
     			<p class="t-in">当评估程序受到限制并对与评估目的相对应的评估结论构成重大影响时，指定评估机构可以中止履行委托协议书；相关限制无法排除时，指定评估机构可以解除委托协议书。</p>
			</article>
		</section>
		<section class="btns-panel full-center"><a class="btn btn-blue" onClick="history.back(-1)" href="javascript:;">返回</a></section>
		
		
	</body>
</html>
