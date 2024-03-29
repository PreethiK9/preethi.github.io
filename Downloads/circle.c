#include <GL/glut.h>
int xc=320,yc=240;
void plot_point(int x,int y){
glBegin(GL_POINTS);
glPointSize(10.0);
glVertex2i(xc+x,yc+y);
glVertex2i(xc+x,yc-y);
glVertex2i(xc+y,yc+x);
glVertex2i(xc+y,yc-x);
glVertex2i(xc-x,yc-y);
glVertex2i(xc-y,yc-x);
glVertex2i(xc-x,yc+y);
glVertex2i(xc-y,yc+x);
glEnd();
}
void bresenham_circle(int r){
int x=0,y=r;
int pk=1-r;
plot_point(x,y);
int k;
while(x<y){
x+=1;
if(pk<0)
pk=pk+2*x+1;
else
{
y=y-1;
pk=pk+2*(x-y)+1;
}
plot_point(x,y);
}
glFlush();
}
void circle(){
bresenham_circle(200);
bresenham_circle(100);
bresenham_circle(150);
bresenham_circle(25);
bresenham_circle(250);
}

void Init(){
glClear(GL_COLOR_BUFFER_BIT);
glClearColor(1.0,1.0,0.0,0);
glColor3f(1.0,0.0,0.0);
gluOrtho2D(0,640,0,480);                                                                                                  
}
void main(int argc,char** argv){
glutInit(&argc,argv);
glutInitDisplayMode(GLUT_SINGLE|GLUT_RGB);
glutInitWindowPosition(0,0);
glutInitWindowSize(640,480);
glutCreateWindow("Bresenham_circle");
Init();
glutDisplayFunc(circle);
glutMainLoop();
}			
