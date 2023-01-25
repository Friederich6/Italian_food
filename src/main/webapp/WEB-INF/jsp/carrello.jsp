<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Italian Food</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <jsp:include page="menuBar.jsp"/>
</head>
<body>
<link rel="stylesheet" href="css/style.css" type="text/css"/>

    <div class="carrello_conteiner" >
        <div class="left_carrello" >
        </div>
        <div id="right_carrello" class="z-coast-cart__cart__cart-tiles__container z-coast-cart__cart__cart-tiles__container__second-container z-coast-cart__cart__cart-tiles__spacing  z-coast-cart__cart__sticky"><div>
            <div>
                <div class="z-coast-base__tile z-coast-base__tile--white">
                    <div class="z-coast-base__totals-tile-notification">
                        <div class="z-coast-base__collapsible z-coast-base__collapsible--collapsed">
                            <div class="z-1-notification z-coast-base__totals-tile-notification__notification z-1-notification--global z-1-notification--info">
                                <span class="z-1-notification__icon">
                                    <span class="z-1-icon z-1-icon-ic_info_lrg z-1-icon-small z-1-icon-inherit z-1-notification__icon-comp">
                                        <svg width="24" height="24" viewBox="0 0 24 24" class="z-1-icon_svg">
                                            <use xlink:href="#icon_svg-ic_info_lrg"></use>
                                        </svg>
                                    </span>
                                </span>
                                <span class="z-1-text z-1-notification__content z-1-text-detail-text-regular z-1-text-black">
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="z-coast-base__tile-title" data-id="tile-title">
                        <h2 class="z-2-text z-coast-base__tile-title_text z-2-text-title-4 z-2-text-black">Totale</h2>
                    </div>
                    <div class="z-coast-base__totals-tile">
                        <div class="z-coast-base__totals">
                            <dl>
                                <z-grid spacing="gutter">
                                    <z-grid-item span-xs="8" class="z-coast-base__totals__cell">
                                        <dt class="z-2-text z-2-text-body z-2-text-black">Subtotale</dt>
                                    </z-grid-item>
                                    <z-grid-item span-xs="4" class="z-coast-base__totals__cell z-coast-base__totals__cell--text-right">
                                        <dd class="z-2-text z-2-text-body z-2-text-black">0,00&nbsp;€</dd>
                                    </z-grid-item>
                                </z-grid>
                            </dl>
                            <dl>
                                <z-grid spacing="gutter">
                                    <z-grid-item span-xs="8" class="z-coast-base__totals__cell">
                                        <dt class="z-2-text z-2-text-body z-2-text-black">Spedizione</dt>
                                    </z-grid-item>
                                    <z-grid-item span-xs="4" class="z-coast-base__totals__cell z-coast-base__totals__cell--text-right">
                                        <dd class="z-2-text z-2-text-body z-2-text-black">0,00&nbsp;€</dd>
                                    </z-grid-item>
                                </z-grid>
                            </dl>
                            <dl>
                                <z-grid spacing="gutter">
                                    <z-grid-item span-xs="8" class="z-coast-base__totals__cell z-coast-base__totals__cell--with-top-line">
                                        <dt class="z-2-text z-coast-base__totals__total-price-text z-2-text-body z-2-text-black">Totale (IVA inclusa)</dt>
                                    </z-grid-item>
                                    <z-grid-item span-xs="4" class="z-coast-base__totals__cell z-coast-base__totals__cell--with-top-line z-coast-base__totals__cell--text-right">
                                        <dd class="z-2-text z-2-text-body z-2-text-black">
                                            <span class="z-2-text z-coast-base__totals__total-price-value z-coast-base__totals__total-price-text z-2-text-body z-2-text-black">0,00&nbsp;€</span>
                                        </dd>
                                    </z-grid-item>
                                </z-grid>
                            </dl>
                        </div>
                        <button style="border-radius: 5px" class="z-1-button z-coast-base-primary-accessible z-coast-base__totals-tile__button-checkout z-1-button--primary z-1-button--button" name="" type="button">
                            <div class="z-1-button__content">Acquista</div>
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>