library(igraph)

##----------------------------------------------------------------------
# 
# Exercise 1
#
# - Create an empty directed graph with 10 nodes. Set color of all nodes 
#   to green and shape to square
# - Add 15 random edges to the graph
# - Add a vertex to the graph, color it to red and add edges: 3->6, 6->5. 
#   Set vertex shape to sphere.
# - Replace the first edge with the edge  6->3.
# - Name vertices with letters A-K. List all vertices and edges.
# - Plot the graph. The size of a vertex should depend on the number of 
#   incoming edges.
# - Plot the distribution of vertices degrees.
# - Create a heatmap from the adjacency matrix.



##----------------------------------------------------------------------
#
# Exercise 2
#
# - Create an Erdos-Renyi random graph of 100 nodes and 120 edges and 
#   plot it.
# - Add weights to edges by sampling them from the range [1,20]
# - Compute the diameter and plot the network assigning two colors 
#   to the nodes (one for the nodes belonging to the diameter and one 
#   for all the others), set also a width to edges in function of the 
#   weight and set red color for edges having weight > 10, blue otherwise 
# - Remove edges that have weigth <= 10 and plot again
# - Remove disconnected nodes (you can do this in two ways: figure out 
#   the first one, for the second one try using the function "components")
# - Find communities based on greedy optimization of modularity



##----------------------------------------------------------------------
#
# Exercise 3
#
# - Create an undirected star graph with 5 edges and plot the graph.
# - Add edges between the following node pairs: 8 and 5, 6 and 3, 6 
#   and 10, 5 and 2, 4 and 8, 2 and 7, 6 and 5, 7 and 9
# - Re-plot the graph, this time with a circular layout, ordered by 
#   vertex number.
# - Verify that the graph is connected.
# - Is the graph bipartite?
# - Calculate the graph's diameter.
# - Find the size of each clique in the graph. (Hint: Use the sapply 
#   function).
# - Make a new plot of the graph, with the node size being relative 
#   to the nodes closeness, multiplied by 500.
# - Color the nodes of the graph: even nodes blue, odd nodes red. 
#   (Hint: Using an if-else statement will make this more concise).



##----------------------------------------------------------------------
#
# Exercise 4
#
# - Load data from "sociogram-employees-un.csv". Create an undirected 
#   graph. Name nodes as letters A to Y. Set node color to orange and 
#   shape to circle. Set edge's color to blue and arrow size to 0.2. 
#   Plot the graph.
# - Find the largest cliques in the group.
# - How many maximal cliques are there?
# - Calculate the network cohesion.
# - Find the clusters based on betweenness.
# - Find the loop edges.



##----------------------------------------------------------------------
#
# Exercise 5
#
# - Create an undirected graph from "net_nodes.csv" and "net_edges.csv" 
#   files.
# - Compute the clustering coefficient of the network.
# - Create a ring graph of 10 nodes and rename vertices with letters 
#   from k-t.
# - Rewire the vertices of the previous graph connecting them in a 
#   neighborhood of 3.
# - Create another graph by disjoint union of the previous two and add 3 
#   random edges to connect them.
#   (Hint: use sample function).
# - Compute again the clustering coefficient of the new network


