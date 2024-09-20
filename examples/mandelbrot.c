void
mandelbrot_scalar_f32(int width, int maxIter, int *res)
{
	for (int y = 0; y < width; ++y)
	for (int x = 0; x < width; ++x) {
		float cx = x * 2.0f / width - 1.5;
		float cy = y * 2.0f / width - 1;
		int iter = 0;
		float zx = 0, zy = 0, zxS = 0, zyS = 0;

		while (zxS + zyS <= 4 && iter < maxIter) {
			zxS = zxS - zyS + cx;
			zy = 2 * zx * zy + cy;
			zx = zxS;
			zxS = zx*zx;
			zyS = zy*zy;
			++iter;
		}
		*res++ = iter;
	}
}
