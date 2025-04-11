
// Gmsh project created on 2024-12-02T18:55:11.809


//  4 ---------------------------------- 3
//  |                                    |
//  |                                    | 
//  5 __                                 |
//       \                               |
//  6      1 --------------------------- 2

SetFactory("OpenCASCADE");

lc = 0.04;

Point(1) = { 1.0,  0.0, 0, lc};
Point(2) = { 4.0,  0.0, 0, lc};
Point(3) = { 4.0,  2.0, 0, lc};
Point(4) = { 0.0,  2.0, 0, lc};
Point(5) = { 0.0,  1.0, 0, lc};
Point(6) = { 0.0,  0.0, 0, lc};

Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 5};

// Gmsh provides other curve primitives than stright lines: splines, 
// B-splines, circle arcs, ellipse arcs, etc. Here we define a new 
// circle arc, starting at point 5 and ending at point 1, with the 
// circle’s center being the point 6:
Circle(5) = {5, 6, 1};

Line Loop(1) = {1, 2, 3, 4, 5};

Plane Surface(1) = {1};

Physical Surface("EALL") = {1} ;

Recombine Surface{1};

Mesh.Algorithm = 1;
Mesh 2;