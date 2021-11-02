package weatherTests.weather;

import com.intuit.karate.junit5.Karate;

class WeatherTestRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("weather").relativeTo(getClass());
    }    

}
