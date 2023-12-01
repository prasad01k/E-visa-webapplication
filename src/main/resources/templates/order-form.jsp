<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <link rel="stylesheet" type="text/css" th:href="@{/css/style.css}" />
    <!-- Add your CSS and JavaScript links here -->
</head>
<body>
    <form th:action="@{/order}" th:object="${order}" method="post">
        <div class="row">
            <div class="col-75">
                <div class="container">
                    <h3>Billing Address</h3>
                    <label for="fname"><i class="fa fa-user"></i> Full Name</label>
                    <input type="text" th:field="*{fullName}" id="fname" placeholder="John M. Doe">
                    <label for="email"><i class="fa fa-envelope"></i> Email</label>
                    <input type="text" th:field="*{email}" id="email" placeholder="john@example.com">
                    <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
                    <input type="text" th:field="*{address}" id="adr" placeholder="542 W. 15th Street">
                    <label for="city"><i class="fa fa-institution"></i> City</label>
                    <input type="text" th:field="*{city}" id="city" placeholder="New York">
                    <div class="row">
                        <div class="col-50">
                            <label for="state">State</label>
                            <input type="text" th:field="*{state}" id="state" placeholder="NY">
                        </div>
                        <div class="col-50">
                            <label for="zip">Zip</label>
                            <input type="text" th:field="*{zip}" id="zip" placeholder="10001">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-75">
                <div class="container">
                    <h3>Payment</h3>
                    <label for="fname">Accepted Cards</label>
                    <div class="icon-container">
                        <i class="fa fa-cc-visa" style="color:navy;"></i>
                        <i class="fa fa-cc-amex" style="color:blue;"></i>
                        <i class="fa fa-cc-mastercard" style="color:red;"></i>
                        <i class="fa fa-cc-discover" style="color:orange;"></i>
                    </div>
                    <label for="cname">Name on Card</label>
                    <input type="text" th:field="*{cardName}" id="cname" placeholder="John More Doe">
                    <label for="ccnum">Credit card number</label>
                    <input type="text" th:field="*{cardNumber}" id="ccnum" placeholder="1111-2222-3333-4444">
                    <label for="expmonth">Exp Month</label>
                    <input type="text" th:field="*{expMonth}" id="expmonth" placeholder="September">
                    <div class="row">
                        <div class="col-50">
                            <label for="expyear">Exp Year</label>
                            <input type="text" th:field="*{expYear}" id="expyear" placeholder="2018">
                        </div>
                        <div class="col-50">
                            <label for="cvv">CVV</label>
                            <input type="text" th:field="*{cvv}" id="cvv" placeholder="352">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <label>
            <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        <input type="submit" value="Continue to checkout" class="btn">
    </form>
</body>
</html>
