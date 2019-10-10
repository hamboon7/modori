package com.modori.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. cmd값 여부 체크 : 절대 안바뀜
		String cmd = request.getParameter("cmd");
		if(cmd==null || cmd.trim().length()<=5)
			cmd="index";
		String page = "";
		// 2. Factory(분배역할) and Action()
		Action a = null;
		switch(cmd) {
		case "loginUI":
			page="login.jsp";
			break;
		case "loginAction":
			a = new LoginAction();
			page = a.execute(request, response);
			break;
		case "logoutAction":
			a = new LogoutAction();
			page = a.execute(request, response);
			break;
		case "mainAction":
			a = new MainAction();
			page = a.execute(request, response);
			break;
		case "productSelectAction":
			a = new ProductSelectAction();
			page = a.execute(request, response);
			break;
		case "memberUI":
			page="login.jsp";
			break;
		case "memberAction":
			a = new MemberAction();
			page = a.execute(request, response);
			break;
		case "memberDeleteUI":
			page="memberDelete.jsp";
			break;
		case "memberDeleteAction":
			a = new MemberDeleteAction();
			page = a.execute(request, response);
			break;
		case "findUI":
			page = "find.jsp";
			break;
		case "findAction":
			a = new FindAction();
			page = a.execute(request, response);
			break;
		case "findUpdateAction":
			a = new FindUpdateAction();
			page = a.execute(request, response);
			break;
		case "findUpdate2Action":
			a = new FindUpdate2Action();
			page = a.execute(request, response);
			break;
		case "categoryUI":
			page = "category.jsp";
			break;
		case "searchUI":
			page="search.jsp";
			break;
		case "searchAction":
			a = new SearchAction();
			page = a.execute(request, response);
			break;
		case "search2Action":
			a = new Search2Action();
			page = a.execute(request, response);
			break;
		case "productUI":
			page="product.jsp";
			break;
		case "productAction":
			a = new ProductAction();
			page = a.execute(request, response);
			break;
		case "productEnrollUI":
			page="productEnroll.jsp";
			break;
		case "productEnrollAction":
			a = new ProductEnrollAction();
			page = a.execute(request, response);
			break;
		case "productPurchaseUI":
			page="productPurchase.jsp";
			break;
		case "productPurchaseAction":
			a = new ProductPurchaseAction();
			page = a.execute(request, response);
			break;
		case "bazaarUI":
			page="bazaar.jsp";
			break;
		case "bazaarAction":
			a = new BazaarAction();
			page = a.execute(request, response);
			break;
		case "bazaarEnrollUI":
			page="bazaarEnroll.jsp";
			break;
		case "bazaarEnrollAction":
			a = new BazaarEnrollAction();
			page = a.execute(request, response);
			break;
		case "bazaarPurchaseUI":
			page="bazaarPurchase.jsp";
			break;
		case "bazaarPurchaseAction":
			a = new BazaarPurchaseAction();
			page = a.execute(request, response);
			break;
		case "bookUI":
			page="book.jsp";
			break;
		case "bookAction":
			a = new BookAction();
			page = a.execute(request, response);
			break;
		case "bookEnrollUI":
			page="bookEnroll.jsp";
			break;
		case "bookEnrollAction":
			a = new BookEnrollAction();
			page = a.execute(request, response);
			break;
		case "rentalBookUI":
			page="rentalBook.jsp";
			break;
		case "rentalBookAction":
			a = new RentalBookAction();
			page = a.execute(request, response);
			break;
		case "rentalAction":
			a = new RentalAction();
			page = a.execute(request, response);
			break;
		case "bookingAction":
			a = new BookingAction();
			page = a.execute(request, response);
			break;
		case "bookingCancleAction":
			a = new BookingCancleAction();
			page = a.execute(request, response);
			break;
		case "bookReturnAction":
			a = new BookReturnAction();
			page = a.execute(request, response);
			break;
		case "auctionUI":
			page="auction.jsp";
			break;
		case "auctionAction":
			a = new AuctionAction();
			page = a.execute(request, response);
			break;
		case "auctionEnrollUI":
			page="auctionEnroll.jsp";
			break;
		case "auctionEnrollAction":
			a = new AuctionEnrollAction();
			page = a.execute(request, response);
			break;
		case "auctionPurchaseUI":
			page="auctionPurchase.jsp";
			break;
		case "auctionPurchaseAction":
			a = new AuctionPurchaseAction();
			page = a.execute(request, response);
			break;
		case "groupBuyingUI":
			page="groupBuying.jsp";
			break;
		case "groupBuyingAction":
			a = new GroupBuyingAction();
			page = a.execute(request, response);
			break;
		case "groupBuyingEnrollUI":
			page="groupBuyingEnroll.jsp";
			break;
		case "groupBuyingEnrollAction":
			a = new GroupBuyingEnrollAction();
			page = a.execute(request, response);
			break;
		case "groupPurchaseUI":
			page="groupPurchase.jsp";
			break;
		case "groupPurchaseAction":
			a = new GroupPurchaseAction();
			page = a.execute(request, response);
			break;
		case "myPageUI":
			page="myPage.jsp";
			break;
		case "myPageAction":
			a = new MyPageAction();
			page = a.execute(request, response);
			break;
		case "enrollProductUI":
			page="enrollProduct.jsp";
			break;
		case "enrollProductAction":
			a = new EnrollProductAction();
			page = a.execute(request, response);
			break;
		case "buyProductUI":
			page="buyProduct.jsp";
			break;
		case "buyProductAction":
			a = new BuyProductAction();
			page = a.execute(request, response);
			break;
		case "myPageEnrollPurchaseAction":
			a = new MyPageEnrollPurchaseAction();
			page = a.execute(request, response);
			break;
		case "myPageBuyPurchaseAction":
			a = new MyPageBuyPurchaseAction();
			page = a.execute(request, response);
			break;
		case "myPageDeleteAction":
			a = new MyPageDeleteAction();
			page = a.execute(request, response);
			break;
		case "myPageCancleAction":
			a = new MyPageCancleAction();
			page = a.execute(request, response);
			break;
		case "myPageScoreAction":
			a = new MyPageScoreAction();
			page = a.execute(request, response);
			break;
		case "myPageSaleAction":
			a = new MyPageSaleAction();
			page = a.execute(request, response);
			break;
		case "myPageSellerMoneyAction":
			a = new MyPageSellerMoneyAction();
			page = a.execute(request, response);
			break;
		case "myPageTotalScoreAction":
			a = new MyPageTotalScoreAction();
			page = a.execute(request, response);
			break;
		case "myPageDeclareListAction":
			a = new MyPageDeclareListAction();
			page = a.execute(request, response);
			break;
		case "myPageBookAction":
			a = new MyPageBookAction();
			page = a.execute(request, response);
			break;
		case "myPageReturnBookAction":
			a = new MyPageReturnBookAction();
			page = a.execute(request, response);
			break;
		case "accountUI":
			page="account.jsp";
			break;
		case "accountAction":
			a = new AccountAction();
			page = a.execute(request, response);
			break;
		case "receiptUI":
			page="receipt.jsp";
			break;
		case "receiptAction":
			a = new ReceiptAction();
			page = a.execute(request, response);
			break;
		case "declareAction":
			a = new DeclareAction();
			page = a.execute(request, response);
			break;
		case "declareProductEnrollAction":
			a = new DeclareProductEnrollAction();
			page = a.execute(request, response);
			break;
		case "declareBazaarEnrollAction":
			a = new DeclareBazaarEnrollAction();
			page = a.execute(request, response);
			break;
		case "declareAuctionEnrollAction":
			a = new DeclareAuctionEnrollAction();
			page = a.execute(request, response);
			break;
		case "declareGroupBuyingEnrollAction":
			a = new DeclareGroupBuyingEnrollAction();
			page = a.execute(request, response);
			break;
		case "studentAdminUI":
			page="studentAdmin.jsp";
			break;
		case "studentCouncilAction":
			a = new StudentCouncilAction();
			page = a.execute(request, response);
			break;
		case "index":
		default:
			page = "index.jsp";
			break;
		}
		// 3. View 페이지 이동 : 절대 안바뀜
		request.getRequestDispatcher("/"+page).forward(request, response);
	}
}
