package org.example.Model;

import java.util.List;

public class Hour {
    private String datetime;
    private long datetimeEpoch;
    private double temp;
    private double feelslike;
    private double humidity;
    private double dew;
    private double precip;
    private double precipprob;
    private double snow;
    private double snowdepth;
    private List<String> preciptype;
    private double windgust;
    private double windspeed;
    private double winddir;
    private double pressure;
    private double visibility;
    private double cloudcover;
    private double solarradiation;
    private double solarenergy;
    private double uvindex;
    private double severerisk;
    private String conditions;
    private String icon;
    private Object stations; // có thể là null
    private String source;

    public String getDatetime() {
        return datetime;
    }

    public Hour(String datetime, long datetimeEpoch, double temp, double feelslike, double humidity, double dew, double precip, double precipprob, double snow, double snowdepth, List<String> preciptype, double windgust, double windspeed, double winddir, double pressure, double visibility, double cloudcover, double solarradiation, double solarenergy, double uvindex, double severerisk, String conditions, String icon, Object stations, String source) {
        this.datetime = datetime;
        this.datetimeEpoch = datetimeEpoch;
        this.temp = temp;
        this.feelslike = feelslike;
        this.humidity = humidity;
        this.dew = dew;
        this.precip = precip;
        this.precipprob = precipprob;
        this.snow = snow;
        this.snowdepth = snowdepth;
        this.preciptype = preciptype;
        this.windgust = windgust;
        this.windspeed = windspeed;
        this.winddir = winddir;
        this.pressure = pressure;
        this.visibility = visibility;
        this.cloudcover = cloudcover;
        this.solarradiation = solarradiation;
        this.solarenergy = solarenergy;
        this.uvindex = uvindex;
        this.severerisk = severerisk;
        this.conditions = conditions;
        this.icon = icon;
        this.stations = stations;
        this.source = source;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    public long getDatetimeEpoch() {
        return datetimeEpoch;
    }

    public void setDatetimeEpoch(long datetimeEpoch) {
        this.datetimeEpoch = datetimeEpoch;
    }

    public double getTemp() {
        return temp;
    }

    public void setTemp(double temp) {
        this.temp = temp;
    }

    public double getFeelslike() {
        return feelslike;
    }

    public void setFeelslike(double feelslike) {
        this.feelslike = feelslike;
    }

    public double getHumidity() {
        return humidity;
    }

    public void setHumidity(double humidity) {
        this.humidity = humidity;
    }

    public double getDew() {
        return dew;
    }

    public void setDew(double dew) {
        this.dew = dew;
    }

    public double getPrecip() {
        return precip;
    }

    public void setPrecip(double precip) {
        this.precip = precip;
    }

    public double getPrecipprob() {
        return precipprob;
    }

    public void setPrecipprob(double precipprob) {
        this.precipprob = precipprob;
    }

    public double getSnow() {
        return snow;
    }

    public void setSnow(double snow) {
        this.snow = snow;
    }

    public double getSnowdepth() {
        return snowdepth;
    }

    public void setSnowdepth(double snowdepth) {
        this.snowdepth = snowdepth;
    }

    public List<String> getPreciptype() {
        return preciptype;
    }

    public void setPreciptype(List<String> preciptype) {
        this.preciptype = preciptype;
    }

    public double getWindgust() {
        return windgust;
    }

    public void setWindgust(double windgust) {
        this.windgust = windgust;
    }

    public double getWindspeed() {
        return windspeed;
    }

    public void setWindspeed(double windspeed) {
        this.windspeed = windspeed;
    }

    public double getWinddir() {
        return winddir;
    }

    public void setWinddir(double winddir) {
        this.winddir = winddir;
    }

    public double getPressure() {
        return pressure;
    }

    public void setPressure(double pressure) {
        this.pressure = pressure;
    }

    public double getVisibility() {
        return visibility;
    }

    public void setVisibility(double visibility) {
        this.visibility = visibility;
    }

    public double getCloudcover() {
        return cloudcover;
    }

    public void setCloudcover(double cloudcover) {
        this.cloudcover = cloudcover;
    }

    public double getSolarradiation() {
        return solarradiation;
    }

    public void setSolarradiation(double solarradiation) {
        this.solarradiation = solarradiation;
    }

    public double getSolarenergy() {
        return solarenergy;
    }

    public void setSolarenergy(double solarenergy) {
        this.solarenergy = solarenergy;
    }

    public double getUvindex() {
        return uvindex;
    }

    public void setUvindex(double uvindex) {
        this.uvindex = uvindex;
    }

    public double getSevererisk() {
        return severerisk;
    }

    public void setSevererisk(double severerisk) {
        this.severerisk = severerisk;
    }

    public String getConditions() {
        return conditions;
    }

    public void setConditions(String conditions) {
        this.conditions = conditions;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public Object getStations() {
        return stations;
    }

    public void setStations(Object stations) {
        this.stations = stations;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }
}
