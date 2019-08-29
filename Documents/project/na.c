#include<GL/glut.h>
void init1(void)
{
glClearColor(1.0,1.0,1.0,0.0);
glMatrixMode(GL_PROJECTION);
gluOrtho2D(0.0,200.0,0.0,150.0);
}
void lineSegment(void)
{
glClear(GL_COLOR_BUFFER_BIT);
glColor3f(1.0,0.0,0.0);
glBegin(GL_POLYGON);
glVertex2i(20,60);
glVertex2i(20,80);
glVertex2i(20,80);
glVertex2i(30,80);
glVertex2i(30,80);
glVertex2i(40,100);
glVertex2i(40,100);
glVertex2i(80,100);
glVertex2i(80,100);
glVertex2i(90,80);
glVertex2i(90,80);
glVertex2i(100,80);
glVertex2i(100,80);
glVertex2i(100,60);
glVertex2i(100,60);
glVertex2i(20,60);
glEnd();
glFlush();
}

void main(int argc,char** argv)
{
glutInit(&argc,argv);
glutInitDisplayMode(GLUT_RGB|GLUT_SINGLE);
glutInitWindowPosition(150,100);
glutInitWindowSize(700,400);
glutCreateWindow("an example of openGl");
init1();
glutDisplayFunc(lineSegment);
glutMainLoop();
}

