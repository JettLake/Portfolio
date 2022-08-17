--Select *
--From Project1..CovidDeaths
--order by 3,4

--Select *
--From Project1..CovidVax
--order by 3,4

---- select total deaths vs total cases
--Select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as Percentage
--From Project1..CovidDeaths
--where location like '%states%'
--order by 1,2

-- select total cases vs population
--shows population that got covid
--Select location, date, total_cases, population, (total_cases/population)*100 as Percentage
--From Project1..CovidDeaths
--where location like '%states%'
--order by 1,2

--select countires with highest percentage vs population

--Select location, population, MAX(total_cases) as HighestInfectionNumber, MAX((total_cases/population))*100 as Percentage
--From Project1..CovidDeaths
--Group by location, population
--order by 4 DESC

--select total deaths
--Select location, population, MAX(total_cases) as HighestInfectionNumber, MAX((total_cases/population))*100 as Percentage
--From Project1..CovidDeaths
--where continent is not null
--Group by location, population
--order by 4 DESC

--select country with highest death rate
Select location, MAX(cast(total_deaths as bigint)) as TotalDeathCount
From Project1..CovidDeaths
where continent is not null
Group by location
order by TotalDeathCount DESC

