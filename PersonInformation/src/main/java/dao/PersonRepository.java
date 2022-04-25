package dao;

import java.util.ArrayList;
import dto.Person;
public class PersonRepository {
	private ArrayList<Person> arraylist = new ArrayList<Person>();
	private static PersonRepository pr = new PersonRepository();
	
	public static PersonRepository getInstance() {
		return pr;
	}
	
	public ArrayList<Person> getAllList(){
		return arraylist;
	}
	
	public void addArrayList(Person person) {
		arraylist.add(person);
	}
	
	public Person getPersonbyId(String personId) {
		Person personById = null;
		
		for(int i = 0; i < arraylist.size(); i++) {
			Person person = arraylist.get(i);
			if(person != null && person.getPersonId() != null && person.getPersonId().equals(personId)) {
				personById = person;
				break;
			}
		}
		return personById;
	}
}
