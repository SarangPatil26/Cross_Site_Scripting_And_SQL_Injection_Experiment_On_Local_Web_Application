import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Testt {
	public static void main(String args[])
	{
		WebDriver driver= new FirefoxDriver();
		
		
		
		
                //driver.get("www.google.com");
		
		try {
                        
			driver.manage().window().maximize();
                        
                        //1
                        
                        driver.get("http://localhost:8080/Mini/newjsp2.jsp");
                        Thread.sleep(1000);
                        driver.findElement(By.xpath("/html/body/center/div/form/input[1]")).sendKeys("M");
		
                        driver.findElement(By.xpath("/html/body/center/div/form/input[2]")).sendKeys("Mayura@0309");


                        driver.findElement(By.xpath("/html/body/center/div/form/input[3]")).click();
                        
                        Thread.sleep(1000);

                        
                        //2
                        driver.get("http://localhost:8080/Mini/newjsp2.jsp");
                        Thread.sleep(1000);
                        driver.findElement(By.xpath("/html/body/center/div/form/input[1]")).sendKeys("Mom");
		
                        driver.findElement(By.xpath("/html/body/center/div/form/input[2]")).sendKeys("Mom@0309");


                        driver.findElement(By.xpath("/html/body/center/div/form/input[3]")).click();
                        Thread.sleep(1000);
                        //3
                        driver.get("http://localhost:8080/Mini/newjsp2.jsp");
                        Thread.sleep(1000);
                        driver.findElement(By.xpath("/html/body/center/div/form/input[1]")).sendKeys("Sarang");
		
                        driver.findElement(By.xpath("/html/body/center/div/form/input[2]")).sendKeys("sarangpatil");


                        driver.findElement(By.xpath("/html/body/center/div/form/input[3]")).click();
                        Thread.sleep(1000);
                        
                        //4
                        driver.get("http://localhost:8080/Mini/newjsp2.jsp");
                        Thread.sleep(1000);
                        driver.findElement(By.xpath("/html/body/center/div/form/input[1]")).sendKeys("Sarang");
		
                        driver.findElement(By.xpath("/html/body/center/div/form/input[2]")).sendKeys("SARANGPATIL");


                        driver.findElement(By.xpath("/html/body/center/div/form/input[3]")).click();
                        Thread.sleep(1000);
                        //5
                        driver.get("http://localhost:8080/Mini/newjsp2.jsp");
                        Thread.sleep(1000);
                        driver.findElement(By.xpath("/html/body/center/div/form/input[1]")).sendKeys("Sarang");
		
                        driver.findElement(By.xpath("/html/body/center/div/form/input[2]")).sendKeys("SarangPatil");


                        driver.findElement(By.xpath("/html/body/center/div/form/input[3]")).click();
                        Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
	}
}
