package {
	import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.display.GradientType;
	import flash.geom.Matrix;

	import flash.display.*;
	import flash.geom.*;

	public class GradientBg extends MovieClip {

		public function GradientBg() {
			trace("GradientBg");

//			/****************************
//			Define Variables
//			****************************/
//			//Type of Gradient we will be using
//			var fType: String = GradientType.LINEAR;
//			//Colors of our gradient in the form of an array
//			var colors: Array = [0xF1F1F1, 0x666666];
//			//Store the Alpha Values in the form of an array
//			var alphas: Array = [1, 1];
//			//Array of color distribution ratios.
//			//The value defines percentage of the width where the color is sampled at 100%
//			var ratios: Array = [0, 255];
//			//Create a Matrix instance and assign the Gradient Box
//			var matr: Matrix = new Matrix();
//			matr.createGradientBox(200, 20, 0, 0, 0);
//			//SpreadMethod will define how the gradient is spread. Note!!! Flash uses CONSTANTS to represent String literals
//			var sprMethod: String = SpreadMethod.PAD;
//			//Start the Gradietn and pass our variables to it
//			var sprite: Sprite = new Sprite();
//			//Save typing + increase performance through local reference to a Graphics object
//			var g: Graphics = sprite.graphics;
//			g.beginGradientFill(fType, colors, alphas, ratios, matr, sprMethod);
//			g.drawRect(0, 0, 400, 200);

//			addChild(sprite);
		}

		public function drawGradient() {
			var shape: Shape = new Shape;

			//Устанавливаем тип градиентной заливки
			var type: String = GradientType.LINEAR;

			//Разворачиваем градиент под нужным нам углом (в радианах)
			//В данном случае он будет развернут на 90 градусов 
			//и градиентная заливка будет наложена сверху вниз
			var matrix: Matrix = new Matrix;
			matrix.createGradientBox(200, 200, 1.5708);

			//Определяем цвета градиента
			var colors: Array = [0xffd200, 0xff0000];

			//Определяем прозрачность для каждого цвета градиента
			var alphas: Array = [1, 1];

			//Устанавливаем соотношение цветов в градиенте
			var ratios: Array = [0, 255];

			//Начинаем градиентную заливку
			shape.graphics.beginGradientFill(type, colors, alphas, ratios, matrix);

			//Определяем линию
			shape.graphics.lineStyle(1, 0xff0000, 1);

			//Рисуем квадрат, который будет залит градиентом;
			shape.graphics.drawRect(0, 0, 200, 200);

			//Заканчиваем заливку;
			shape.graphics.endFill();
		}

	}

}