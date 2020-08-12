#include<bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
using namespace __gnu_pbds;//for policy based ds
using namespace std;//standard namespace

#define ff              first
#define ss              second
#define ll             	long long //many places long long is used 
#define pb              push_back //help in vectors
#define mp              make_pair //make pairs of values 
#define pii             pair<int,int>
#define vi              vector<int>
#define mii             map<int,int>
#define pqb             priority_queue<int> //min heaps
#define pqs             priority_queue<int,vi,greater<int> >//max heaps
#define setbits(x)      __builtin_popcountll(x)
#define zrobits(x)      __builtin_ctzll(x) //gives the number of zeroes before 1 
#define mod             1000000007 //the traditional mod
#define inf             1e18
#define ps(x,y)         fixed<<setprecision(y)<<x
#define mk(arr,n,type)  type *arr=new type[n]; //short make of making a dynamic array 
#define w(x)            int x; cin>>x; while(x--)//the testcases method adds it
mt19937                 rng(chrono::steady_clock::now().time_since_epoch().count());//randomly shuffling --good for random adding

typedef tree<int, null_type, less<int>, rb_tree_tag, tree_order_statistics_node_update> pbds;


void c_p_c()
{
	ios_base::sync_with_stdio(0); cin.tie(0); cout.tie(0);
#ifndef ONLINE_JUDGE
	freopen("input.txt", "r", stdin);
	freopen("output.txt", "w", stdout);
	freopen("error.txt", "w", stderr);
#endif
}

int32_t main()
{
	c_p_c();

	return 0;
}