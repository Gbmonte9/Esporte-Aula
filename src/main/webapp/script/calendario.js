/**
 * 
 */

 document.addEventListener("DOMContentLoaded", function () {
    const monthYear = document.getElementById("monthYear");
    const datesContainer = document.getElementById("dates");
  
    function updateCalendar() {
      const currentDate = new Date();
      const year = currentDate.getFullYear();
      const month = currentDate.getMonth();
  
      const firstDayOfMonth = new Date(year, month, 1);
      const lastDayOfMonth = new Date(year, month + 1, 0);
      const daysInMonth = lastDayOfMonth.getDate();
      const firstDayOfWeek = firstDayOfMonth.getDay();
  
      monthYear.textContent = `${getMonthName(month)} ${year}`;
  
      datesContainer.innerHTML = "";
  
      for (let i = 0; i < firstDayOfWeek; i++) {
        const emptyDay = document.createElement("div");
        emptyDay.classList.add("day", "empty");
        datesContainer.appendChild(emptyDay);
      }
  
      for (let dayNumber = 1; dayNumber <= daysInMonth; dayNumber++) {
        const dayElement = document.createElement("div");
        dayElement.textContent = dayNumber;
        dayElement.classList.add("day");
  
        if (isToday(year, month, dayNumber)) {
          dayElement.classList.add("today");
        }
  
        datesContainer.appendChild(dayElement);
      }
    }
  
    function getMonthName(month) {
      const months = [
        "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho",
        "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"
      ];
      return months[month];
    }
  
    function isToday(year, month, day) {
      const today = new Date();
      return year === today.getFullYear() && month === today.getMonth() && day === today.getDate();
    }
  
    updateCalendar();
  });