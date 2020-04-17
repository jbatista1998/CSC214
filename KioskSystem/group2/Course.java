package group2;

public class Course {

	private String semester;
	
	private int instructorID;
	private String instructorName;
	
	private String building;
	private String room;
	
	private int CRN;
	private int courseID;
	private String name;
	private String subject;
	private int number;
	private int creditHours; 
	
	
	private String instructionalMethod;
	
	private String meetingTimes;
	private String startTime;
	private String endTime;

	private String startDate;
	private String endDate;
	
	public String getSemester() {
		return semester;
	}


	public void setSemester(String semester) {
		this.semester = semester;
	}


	public String getInstructor() {
		return instructorName;
	}


	public void setInstructor(String instructor) {
		this.instructorName = instructor;
	}
	
	public void setInstructorID(int id) {
		instructorID = id;
	}
	
	public int getInstructorID() {
		return instructorID;
	}


	public String getRoom() {
		return room;
	}


	public void setRoom(String room) {
		this.room = room;
	}


	public String getBuilding() {
		return building;
	}


	public void setBuilding(String building) {
		this.building = building;
	}


	public String getCourseName() {
		return name;
	}


	public void setCourseName(String name) {
		this.name = name;
	}
	
	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	public int getCourseNumber() {
		return number;
	}
	
	public void setCourseNumber(int number) {
		this.number = number;
	}


	public int getCRN() {
		return CRN;
	}


	public void setCRN(int CRN) {
		this.CRN = CRN;
	}

	public int getCreditHours() {
		return creditHours;
	}


	public void setCreditHours(int creditHours) {
		this.creditHours = creditHours;
	}
	
	public String getMeetingTimes() {
		return meetingTimes;
	}


	public void setMeetingTimes(String meetingTimes) {
		this.meetingTimes = meetingTimes;
	}

	public String getStartTime() {
		return startTime;
	}


	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	
	public String getEndTime() {
		return endTime;
	}


	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}



	public String getStartDate() {
		return startDate;
	}


	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	
	public String getEndDate() {
		return endDate;
	}


	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	public int getCourseID() {
		return courseID;
	}
	
	public void setCourseID(int courseID) {
		this.courseID = courseID;
	}
	
	public String getInstructonialMethod() {
		return instructionalMethod;
	}
	
	public void setInstructionalMethod(String instructionalMethod) {
		this.instructionalMethod = instructionalMethod;
	}
	
	Course()
	{
		
	}
	
}
