<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.bg-gradient-primary {
    background-image: linear-gradient(180deg,#ff3838 50%,#78ff00 100%);
}
.sidebar .nav-item .nav-link span {
    font-size: 1.41rem;
    display: inline;
}
</style>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-1">
            안전 식품 나라 <sup>v0.1</sup>
        </div>
    </a>
    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="/"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>메인</span>
        </a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Heading -->
    <div class="sidebar-heading">Food/Nutrition</div>
    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="/foodlist"> <i class="fas fa-fw fa-table"></i> <span>식품 정보</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/ingestlist"> <i class="fas fa-fw fa-table"></i> <span>내 섭취 정보</span></a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/chooselist"> <i class="fas fa-fw fa-table"></i> <span>찜한 식품</span></a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Heading -->
    <div class="sidebar-heading">Community/Charts</div>
    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-folder"></i> <span>게시판</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">RDB 사용 게시판 :</h6>
                <a class="collapse-item" href="/notice">공지사항</a> <a class="collapse-item" href="/review">섭취 식품 리뷰 게시판</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">Vue-js 사용 게시판 :</h6>
                <a class="collapse-item" href="qna.mvc">자유 게시판</a>
                <div class="collapse-divider"></div>
                <div class="collapse-header">Test :</div>
                <a class="collapse-item" href="forgot-password.html">비밀번호 찾기</a> <a class="collapse-item" href="404.html">404 Page</a> <a class="collapse-item" href="blank.html">Blank Page</a>
            </div>
        </div>
    </li>
    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCharts" aria-expanded="true" aria-controls="Charts"> <i class="fas fa-fw fa-chart-area"></i> <span>통계 자료</span>
        </a>
        <div id="collapseCharts" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="/chart">월별 섭취량 보기</a>
                <a class="collapse-item" href="/chart2">영양소별 섭취량</a>
                <div class="collapse-divider"></div>
                <div class="collapse-header">Test :</div>
                <a class="collapse-item" href="forgot-password.html">뭐하지</a>
            </div>
        </div>
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">
        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
</ul>