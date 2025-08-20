#include<bits/stdc++.h>
using namespace std;
class Node
{
    public:
    int val;
    Node *left,*right,*par;
    Node(int v)
    {
        val=v;
        left=NULL;
        right=NULL;
        par=NULL;
    }

};
class BST
{
    public:
    Node *root;

    BST()
    {
        root=NULL;
    }
    Node* Search(int v)
    {
        Node *temp=root;
        while(temp!=NULL)
        {
            if(v>temp->val)temp=temp->right;
            else if(v<temp->val)temp=temp->left;
            else return temp;
        }
        return temp;
    }
    void insert_inBST(int v)
    {
        Node *newnode=new Node(v);
        if(root==NULL)
        {
            root=newnode;
            return;
        }
        Node *temp=root;
        Node *prev=NULL;
        while(temp!=NULL)
        {
            prev=temp;
            if(v<temp->val)temp=temp->left;
            else temp=temp->right;
        }
        newnode->par=prev;
        if(newnode->val<prev->val)prev->left=newnode;
        else prev->right=newnode;

    }
    void level_order()
    {
        queue<Node*>q;
        if(root!=NULL)q.push(root);
        while(!q.empty())
        {
            auto p=q.front();
            q.pop();
            cout<<p->val<<" ";
            if(p->left)q.push(p->left);
            if(p->right)q.push(p->right);
        }
        cout<<endl;
    }
    void pre_order(Node *temp)
    {
        if(temp==NULL)return;
        cout<<temp->val<<" ";
        pre_order(temp->left);
        pre_order(temp->right);
    }
    void post_order(Node *temp)
    {
        if(temp==NULL)return;
        post_order(temp->left);
        post_order(temp->right);
        cout<<temp->val<<" ";
    }
    void in_order(Node *temp)
    {
        if(temp==NULL)return;
        in_order(temp->left);
        cout<<temp->val<<" ";
        in_order(temp->right);
    }
    Node* minimum()
    {
        Node *temp=root;
        Node *prev=NULL;
        while(temp!=NULL)
        {
            prev=temp;
            temp=temp->left;
        }
        return prev;

    }
    Node* maximum()
    {
        Node *temp=root;
        Node *prev=NULL;
        while(temp!=NULL)
        {
            prev=temp;
            temp=temp->right;
        }
        return prev;

    }
    Node* predecessor(int v)
    {
        Node *tt=Search(v);
        if(tt->left)
        {
            Node *temp=tt->left;
            Node *prev=NULL;
            while(temp!=NULL)
            {
                prev=temp;
                temp=temp->right;
            }
            return prev;
        }
        Node *temp=root;
        Node *pre=NULL;
        while(temp!=tt)
        {
            if (v>=temp->val)
            {
                pre=temp;
                temp=temp->right;
            }
            else temp=temp->left;
        }
        return pre;
    }
    Node* successor(int v)
    {
        Node *tt=Search(v);
        if(tt->right)
        {
            Node *temp=tt->right;
            Node *prev=NULL;
            while(temp!=NULL)
            {
                prev=temp;
                temp=temp->left;
            }
            return prev;
        }
        Node *temp=root;
        Node *pre=NULL;
        while(temp!=tt)
        {
            if (v<temp->val)
            {
                pre=temp;
                temp=temp->left;
            }
            else temp=temp->right;
        }
        return pre;
    }
    void Delete(int v)
    {
        Node *tt=Search(v);
        if(tt->left==NULL&&tt->right==NULL)
        {
            Node *parent=tt->par;
            if(tt==parent->left)
            {
                parent->left=NULL;
                delete(tt);
            }
            else
            {
                parent->right=NULL;
                delete(tt);
            }
        }
        else if(tt->left==NULL&&tt->right!=NULL)
        {
            Node *parent=tt->par;
            Node *bacca=tt->right;
            bacca->par=parent;
            if(tt==parent->left)parent->left=bacca;
            else parent->right=bacca;
            delete(tt);
        }
        else if(tt->left!=NULL&&tt->right==NULL)
        {
            Node *parent=tt->par;
            Node *bacca=tt->left;
            bacca->par=parent;
            if(tt==parent->left)parent->left=bacca;
            else parent->right=bacca;
            delete(tt);
        }
        else
        {
            Node* p=predecessor(v);

                tt->val=p->val;
                if(p->left)
                {
                   Node *parent=p->par;
                    Node *bacca=p->left;
                    bacca->par=parent;
                    if(p==parent->left)parent->left=bacca;
                    else parent->right=bacca;
                    delete(p);
                }
                else
                {
                    Node *parent=p->par;
                    if(p==parent->left)
                    {
                        parent->left=NULL;
                        delete(p);
                    }
                    else
                    {
                        parent->right=NULL;
                        delete(p);
                    }
                }


        }

    }

};
int main()
{
    BST b;
    b.insert_inBST(44);
    b.insert_inBST(17);
    b.insert_inBST(88);
    b.insert_inBST(32);
    b.insert_inBST(65);
    b.insert_inBST(97);
    b.insert_inBST(28);
    b.insert_inBST(54);
    b.insert_inBST(82);
    b.insert_inBST(29);
    b.insert_inBST(76);
    b.insert_inBST(80);

    Node *result=b.Search(97);
    if(result!=NULL)cout<<"Found\n";
    else cout<<"Not Found\n";

    cout<<"Level order: ";
    b.level_order();
    cout<<"Pre order: ";
    b.pre_order(b.root);
    cout<<endl;
    cout<<"in order: ";
    b.in_order(b.root);
    cout<<endl;
    cout<<"post order: ";
    b.post_order(b.root);
    cout<<endl;

    cout<<"minimum value: "<<b.minimum()->val<<endl;
    cout<<"minimum value: "<<b.maximum()->val<<endl;
    cout<<"predecessor of 80: "<<b.predecessor(80)->val<<endl;
    cout<<"successor of 82: "<<b.successor(82)->val<<endl;
    b.Delete(88);
    cout<<"Level order: ";
    b.level_order();

}
