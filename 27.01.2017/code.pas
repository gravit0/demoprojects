program simple1;
var price,discountprice : real;
begin
        write('Please print price: ');
        readln(price);
        discountprice:=(price*(12/100))+price; //Discount Price = price + ( 12% from price )
        writeln('discountprice = ',discountprice : 10 : 2)
end.
