uniform sampler2D tex;
varying vec3 N;
varying vec4 position;

void main()
{
    vec3 diff = vec3(gl_LightSource[0].position - position);
    vec3 L = normalize(diff);
    vec3 normal = normalize(N);

    vec4 tex_color = texture2D(tex,gl_TexCoord[0].st); //added texture

    float I = (max(dot(L, normal),0.0));
    gl_FragColor = gl_FrontMaterial.ambient * gl_LightSource[0].ambient + (I * tex_color) * gl_LightSource[0].diffuse;

}
 