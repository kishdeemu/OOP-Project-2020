package Log.student;

public class Student {
	
	//declare normal things in student
	//create variable for student	
	private int id;
	private String f_name;
	private String l_name;
	private String email;
	private String phone_num;
	private String password;
	private String address;
	private String age;
	
	//set values from constructor
	public Student(int id, String f_name, String l_name, String email, String phone_num, String password, String address,String age) {
		
		this.id = id;
		this.f_name = f_name;
		this.l_name = l_name;
		this.email = email;
		this.phone_num = phone_num;
		this.password = password;
		this.address = address;
		this.age = age;
	}


	public int getId() {
		return id;
	}


	public String getF_name() {
		return f_name;
	}


	public String getL_name() {
		return l_name;
	}


	public String getEmail() {
		return email;
	}


	public String getPhone_num() {
		return phone_num;
	}


	public String getPassword() {
		return password;
	}


	public String getAddress() {
		return address;
	}


	public String getAge() {
		return age;
	}
	
}
