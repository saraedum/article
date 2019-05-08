PICTURES=\
 pictures/MasurPolygon.pdf \
 pictures/RemoveEdge.pdf \
 pictures/FlipEdge.pdf \
 pictures/QuadrilateralFlip.pdf \
 pictures/Torus.pdf \
 pictures/TriangulatedTorus.pdf \
 pictures/MultiIET.pdf \
 pictures/TriangleToInterval1.pdf \
 pictures/TriangleToInterval2.pdf \
 pictures/MultiIETInduction.pdf \
 pictures/DualCombinatorialMaps.pdf \
 pictures/ForwardTriangle.pdf \
 pictures/BackwardTriangle.pdf \
 pictures/VerticalLeftTriangle.pdf \
 pictures/VerticalRightTriangle.pdf

flatsurf_algorithms.pdf: flatsurf_algorithms.tex $(PICTURES)
	pdflatex flatsurf_algorithms.tex
	pdflatex flatsurf_algorithms.tex

pictures/%.pdf: pictures/%.tex
	cd pictures
	pdflatex -output-directory pictures $<

clean:
	rm -f pictures/*.pdf
	rm -f *.aux *.log
