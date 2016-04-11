package mainPack;

import java.awt.BorderLayout;

import javax.swing.*;
import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import javax.swing.tree.*;

public class Fereastra extends JFrame implements TreeSelectionListener

{
		JTree tree;
	Fereastra (String titlu)
	{
		super(titlu);
		String text = "<html><b>Radacina</b></html>";
		DefaultMutableTreeNode root = new DefaultMutableTreeNode(text);
		DefaultMutableTreeNode numere = new DefaultMutableTreeNode("Numere");
		DefaultMutableTreeNode siruri = new DefaultMutableTreeNode ("Siruri");
		
		for (int i = 0; i <3; i++)
		{
			numere.add(new DefaultMutableTreeNode(new Integer(i)));
			siruri.add(new DefaultMutableTreeNode("Sirul "+ i));
			
		}
		root.add(numere);
		root.add(siruri);
		tree = new JTree(root);
		tree.getSelectionModel().setSelectionMode(TreeSelectionModel.SINGLE_TREE_SELECTION);
		tree.addTreeSelectionListener(this);
		getContentPane().add(tree, BorderLayout.CENTER);
		pack();
		
	}


	public void valueChanged(TreeSelectionEvent e) {
		System.out.println(tree.getLastSelectedPathComponent().toString());
		
	}
	
	

}
