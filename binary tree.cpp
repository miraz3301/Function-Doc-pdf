#include<bits/stdc++.h>
using namespace std;
class Node
{
    public:
        int val;
        Node *left;
        Node *right;
    Node(int val)
    {
        this->val=val;
        this->left=NULL;
        this->right=NULL;
    }
};
Node* input_tree()
{
    int val;
    cin>>val;
    Node *root;
    if(val!=-1)root=new Node(val);
    else 
    {
        root=NULL;
        return root;
    }
    queue<Node*>q;
    q.push(root);
    while(!q.empty())
    {
        Node *parent=q.front();
        q.pop();

        int l,r;
        cin>>l>>r;
        Node *L,*R;
        if(l==-1)L=NULL;
        else L=new Node(l);
        if(r==-1)R=NULL;
        else R=new Node(r);
        parent->left=L;
        parent->right=R;

        if(parent->left)q.push(parent->left);
        if(parent->right)q.push(parent->right);
    }
    return root;
}
void preorder(Node *root)
{
    if(root==NULL)return;
    cout<<root->val<<" ";
    preorder(root->left);
    preorder(root->right);
}
void inorder(Node *root)
{
    if(root==NULL)return;
    inorder(root->left);
    cout<<root->val<<" ";
    inorder(root->right);
}
void postorder(Node *root)
{
    if(root==NULL)return;
    postorder(root->left);
    postorder(root->right);
    cout<<root->val<<" ";
}
void levelorder(Node *root)
{
    queue<Node*>q;
    q.push(root);
    while(!q.empty())
    {
        if(!root)//root==NULL
        {
            cout<<"no tree";
            return;
        }
        Node* f=q.front();
        q.pop();
        cout<<f->val<<" ";
        if(f->left)q.push(f->left);
        if(f->right)q.push(f->right);
    }
}
int count_nodes(Node *root)
{
    if(root==NULL)return 0;
    int l=count_nodes(root->left);
    int r=count_nodes(root->right);
    return l+r+1;
}
int count_leaf_nodes(Node *root)
{
    if(root==NULL)return 0;
    if(root->left==NULL&&root->right==NULL)return 1;
    int l=count_leaf_nodes(root->left);
    int r=count_leaf_nodes(root->right);
    return l+r;
}
int max_height(Node *root)
{
    if(root==NULL)return 0;
    if(root->left==NULL&&root->right==NULL)return 1;
    int l=max_height(root->left);
    int r=max_height(root->right);
    return max(l,r)+1;
}
int main()
{
    // Node *root = new Node(10);
    // Node *a = new Node(20);
    // Node *b = new Node(30);
    // Node *c = new Node(40);
    // Node *d = new Node(50);
    // Node *e = new Node(60);
    // root->left = a;
    // root->right = b;
    // a->left = c;
    // b->left = d;
    // b->right = e;

    Node *root=input_tree();
    cout<<"Preorder : ";
    preorder(root);
    cout<<endl;
    cout<<"Inorder : ";
    inorder(root);
    cout<<endl;
    cout<<"Postorder : ";
    postorder(root);
    cout<<endl;
    cout<<"Levelorder : ";
    levelorder(root);
    cout<<endl;
    cout<<"Total Nodes : "<<count_nodes(root)<<endl;
    cout<<"Total Leaf Nodes : "<<count_leaf_nodes(root)<<endl;
    cout<<"Max height : "<<max_height(root)<<endl;
}