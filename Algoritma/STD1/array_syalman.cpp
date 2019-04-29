#include <iostream>
using namespace std;
int main()
{
	int a [4][3], b[4][3], c[4][3];
	cout<<"input nilai 1:"<<endl;
	for (int i = 0; i < 4; i++)
	{
		for (int x = 0; x < 3; x++)
		{
			cin>>a[i][x];
		}
	}
	
	cout<<"input nilai 2:"<<endl;
	for (int i = 0; i < 4; i++)
	{
		for (int x = 0; x < 3; x++)
		{
			cin>>b[i][x];
		}
	}

	//hitungan
	for (int i = 0; i < 4; i++)
	{
		for (int x = 0; x < 3; x++) 
		{
			c[i][x] = a[i][x] + b[i][x];
		}
	}
	
	//hasil	
	cout<<"Hasil :"<<endl;
	for (int i = 0; i < 4; i++)
	{
		for (int x = 0 ; x < 3; x++)
		{
			cout<<c[i][x]<<"|";
		}
	cout<<"\n";
	}
	return 0;
}
