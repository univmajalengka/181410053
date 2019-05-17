#include<iostream>
#include<string>
#include<sstream>
using namespace std;

	struct Sembako
	{
		string Sembako1;
		int harga;
	}Sbk1[3];

void printSbk(Sembako Sbk);

int main ()
{
     string sembako;
     int x;
             for(x=0; x<3;x++)
             {
             cout<<"Masukkan Nama Sembako : ";
             getline(cin,Sbk1[x].Sembako1);
             cout<<"Masukkan Harga : Rp.";
             
             getline(cin,sembako);
             stringstream(sembako)>>Sbk1[x].harga;                    }
             
       cout<<"\nSembako yang Telah Diinput :\n";
       for(x=0;x<3;x++)
       printSbk(Sbk1[x]);   
     
return 0;

}

void printSbk(Sembako Sbk)
{
	cout<<Sbk.Sembako1<<"\t";
	cout<<"\tRp. "<<Sbk.harga<<",-\n";
}
