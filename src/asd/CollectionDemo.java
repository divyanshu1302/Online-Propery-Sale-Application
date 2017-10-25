package asd;


class CollectionDemo
{
		
			static void throwOne(){
			System.out.println("Inside throwOne.");
			try{
			throw new IllegalAccessException("demo");}
			catch(Exception e){
				
			}
			}
			public static void main(String args[]) {
			//try {
			throwOne();
			//} catch (IllegalAccessException e) {
			//System.out.println("Caught " + e);
			//}
			}
			}