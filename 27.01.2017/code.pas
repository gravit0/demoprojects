program simple1;
var price,discountprice : real;
begin
        write('Please print price: ');
        readln(price);
        discountprice:=price-(price*(12/100)); //Discount Price = price - ( 12% from price )
        writeln('discountprice = ',discountprice : 10 : 2)
end.
