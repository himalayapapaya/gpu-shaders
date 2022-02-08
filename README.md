# Assignment 4: Shaders

For this project, you will be programming the GPU using *vertex* and *fragment* hardware shaders to accomplish various visual effects.  As we discussed in class:

* Fragment shaders are used to render individual "fragments" on the screen (basically, they render individual pixels). They are typically used to modify the coloring and lighting of the polygons being rendered.
* Vertex shaders are used to set interpolated inputs to the fragment shaders and possibly modify the vertex positions ```(x,y,z)``` of the polygons being rendered. 

Vertex shaders cannot introduce additional vertices, or delete existing ones -- they are limited by the meshes they are given. (Unlike geometry shaders, which are outside the scope of this class).

Vertex and fragment shaders are used together in pairs, as a *shader program* -- that is, you use one vertex shader and one fragment shader to render something in a particular style, where the outputs of the vertex shader and the inputs of the fragment shader are coordinated.

## Requirements

**For this project, you will be implementing three or four shader programs**. Two or three of them will have most of the work in the fragment shader, and one of them will have most of the work in the vertex shader. **You have several options for each of the four shaders**, so you can choose whichever seems most interesting to you.  Some of the options in the required shaders can earn you extra credit.  Do not be overwhelmed by the number of options.

**Include a description in your index.html web page describing what shaders you chose to implement, change the button labels to correspond to the shaders you created, and add any details about how you chose to implement them to the page below the canvas!**

If you do not do the fourth shader, leave the shader for the fourth button as the default provided.
 
1. **Texture Generation (fragment shader)**
	A checkerboard pattern of squares, with alternating black and white squares.  The number of squares within the [u,v] range of [0..1,0..1] (i.e., the plane surface) 		should vary from 5 to 20, depending on the value of the input slider on the web page.
	
	
2. **Transparency (fragment shader)**
	Turn the plane into *swiss cheese* by adding transparent holes all over it. 

	 	
3. **Vertex Shader**
	Warble - Modify the vertices of the quad so that it "warbles" by moving the *y* or *z* component of each vertex with a ```sin``` function of some 
	combination of the *x* component and time (or mouse position). Modify the normal vectors to make the waves darker where they bend.



**Test your program as follows**

1. cd into the directory and run ```npm install```
2. run with ```npm run dev```
3. visit ```http://localhost:3000/index.html```
