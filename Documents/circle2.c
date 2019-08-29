#include <GL/glut.h>
#include<stdio.h>
int xc=320,yc=240;
void circle(void);
void plot_point(int x,int y){
glBegin(GL_POINTS);
glPointSize(500.0);
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
int bresenham_circle(int r){

int x=0,y=r;
float pk=(5.0/4.0)-r;
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
return;
}


void Init(){
glClear(GL_COLOR_BUFFER_BIT);
glClearColor(1.0,1.0,1.0,1.0);
gluOrtho2D(0,640,0,480);                                                                                                  
}
void main(int argc,char** argv){
int n,i;
glutInit(&argc,argv);
glutInitDisplayMode(GLUT_SINGLE|GLUT_RGB);

glutInitWindowPosition(0,0);
glutInitWindowSize(640,480);
glutCreateWindow("Bresenham_circle");
Init();


glutDisplayFunc(circle);

glutMainLoop();
}	
void circle(void){
glColor3f(1.0,0.0,.0);
bresenham_circle(1);
xc=320;
yc=240;
glColor3f(0.0,0.0,1.0);
bresenham_circle(50);
xc=370;
yc=240;
glFlush();
glColor3f(0.0,0.0,1.0);
bresenham_circle(50);
xc=320;
yc=290;
glFlush();
glColor3f(0.0,0.0,1.0);
bresenham_circle(50);
xc=270;
yc=240;
glFlush();
glColor3f(0.0,0.0,1.0);
bresenham_circle(50);
xc=320;
yc=190;
glFlush();
glColor3f(0.0,0.0,1.0);
bresenham_circle(50);
}		
