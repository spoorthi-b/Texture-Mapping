# Texture-Mapping
Adding texture to a 3D monkey face in GLSL.

Texture mapping in GLSL consists of 3 parts
1. Uploading a texture: Handled in the OpenGL program (C/C++) part. In a typical OpenGL program, textures are read from an image file (.png,. tga etc.) and loaded in to OpenGL. The parameters of the texture (such as interpolation methods) are also set in the program.
2. Computing the texture coordinate of a vertex: In GLSL, the texture coordinate glTexCoord[i] for a texture i and a vertex is determined in the vertex shader. This is the coordinate
of the vertices’ corresponding texture positions in the image data of texture i, where i
is the index of a texture (in case of multiple textures, i = 0 for a single texture).
3. Getting the texture color for a fragment: The texture coordinate, glTexCoord[i], of texture i is readily interpolated to the fragment location by OpenGL. A lookup function such as texture2D is used to get the color from the texture.
