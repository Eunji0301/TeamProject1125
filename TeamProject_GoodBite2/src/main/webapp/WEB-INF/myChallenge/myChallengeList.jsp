<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>마이챌린지 리스트</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 20px 0;
	padding-top: 6cm;
}

.container {
    width: 800px;
    margin: 80px auto;
    padding: 20px;
    background-color: #ffffff;
    border: 3px solid #CDC8E7;
    border-radius: 8px;
}

/* 챌린지 제목 */
.challenge-title {
	text-align: center;
	background-color: #CDC8E7;
	color: #8475BC;
	padding: 20px;
	border-radius: 10px;
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 40px;
}

/* 챌린지 배너 */
.challenge-banner img {
	width: 100%;
	height: auto;
	object-fit: cover;
	border-radius: 8px;
}

.challenge-status p {
	margin: 5px 0;
	font-size: 16px;
	color: #8475BC !important;
	text-align: center;
}

/* 챌린지 진행 상태 */
.challenge-status {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 8px;
	border: 2px solid #CDC8E7;
	margin-top: 20px;
}

.smile img {
	width: 40px;
	height: 40px;
	object-fit: contain;
	vertical-align: middle;
	margin-right: 5px;
}

/* 챌린지 목록 */
.challenge-row {
	display: flex;
	flex-wrap: wrap;
	gap: 30px;
	margin-top: 40px;
}

/* 챌린지 섹션 */
.challenge-section {
	flex: 1 1 calc(50% - 15px);
	min-width: 280px;
}

/* 슬라이드 이미지 */
.carousel img {
	height: 300px;
	object-fit: cover;
	border-radius: 8px;
	border: 2px solid #CDC8E7;
}

/* 챌린지 섹션 제목 */
.challenge-section h3 {
	text-align: center;
	background-color: #CDC8E7;
	color: #8475BC;
	padding: 16px 0;
	border-radius: 10px;
	font-size: 20px;
	margin-bottom: 20px;
}

/* 슬라이드 내 텍스트 */
.carousel-caption h5 {
	font-size: 20px;
	color: #8475BC;
	font-weight: bold;
}

.carousel-caption p {
	font-size: 16px;
	color: #666;
}

/* Carousel controls */
.carousel-control-prev, .carousel-control-next {
	background-color: rgba(0, 0, 0, 0.5);
	border-radius: 50%;
	width: 40px;
	height: 40px;
}

/* Challenge status container */
.challenge-status {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	border: 1px solid #CDC8E7;
}
</style>
</head>
<body>
	<%@ include file="../common/headerBefore.jsp"%>
	
		<div class="container">
			<h2 class="challenge-title">MY CHALLENGE</h2>
			<div class="challenge-banner">
				<img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQA6gMBEQACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABAUCAwYBB//EAEUQAAEDAwIDBAYFCAgHAAAAAAEAAgMEBRESIQYxQRMiUWEUFTJxgZEWI5Kh0gckM1JVk7HRJVNicpTB4fA0QkNUorLC/8QAHAEBAAIDAQEBAAAAAAAAAAAAAAMEAQIFBgcI/8QAOBEAAgIBAQQHBgUEAgMAAAAAAAECAxEEBRIhMRMUQVFhcZEiUoGh0eEGIzKxwRVC8PEzkiRTYv/aAAwDAQACEQMRAD8Arl9AOCEAQBAEAQBAEAQBAEAQGUUck0jY4o3SSOPdYwZJ8sLSUlFNyeEgst4RsnpammP5xTyxZOBrYRkjpy8wtYXQnxjJM2cWuaM/V9b9Z+Z1H1RDZPqj3HeB8DuPmtesV4T3lx5Dcl3GRtdwDtJoarVqDCBEfaIzj5brHWaue+vUz0c+41T0lTTAOqaeWIElo1sIyRzHvC3hdCf6Hkw4yjxaNPvUpqEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBASKGrfRVImja15ALXNdnDmkYI235dVFbUrIbrZtCW68k/14C2APt1M5tNKJIAXyHTjGx73e9kc1V6m/a9t+0sPl4+HD4G/TcFw5eZvfxTVPZLrpqYyS4LpBrG4wNWAcZwButP6dBNYk8Ly+hv1h8eHMwfxLPJLO51LBonYxkkfe3aA4c85ydR38gsrQRikt55WX2eHgY6eWc44EK4XWWvhbFJGxjWPy3TnYaWsA3z0aN1Yp00am2nz+uf3ZpOxyjgg9NlZNAhgIAgCAIAgCAIAgCAIAgCAIAgHvQHsbXSnETXPP9kZUdt1dKzZJLzeDeuqy14ri5eSybX0lTG3U6FwHzVavaOksnuRsWSxZs/V1x35VvBpV0qBAEAQBAEAG/JAEAQBAEAQAnGM9UAWE0+QCyAgCAIAgCAIAgCAIAgHvRgmU1LF2Anqi5rD7LGnmF5zae2pU29Bp1mX893mei2XsRaivpr3iPPu4d5YWi5WmjqXOnoBLGW7ZaHnOfM48VWpr2xqH+Y3FeeP24kuuWyKa92hqUvDL+fL5m6+8TC4wRQUlN6MyN+sHI8CMYHLp8lO/w/0uHbZ6fVlTSbYWlk5VwzlY4v6FLHWzMdkvJ8iVpqPw1V0f5Eva8e36F+j8UTdmL4Ld8Oa+ptromOjbUxbB3tNHj4rbYWusnKWlt5x5fDmvgRbe2dXWlqqeUsZ+PJ/EhL0x5kIAgJNvoKu5VLaahhdLKd8DkB4k9FFdfXTHeseEbRhKbxFFpW8PQ2yQRXS90lPOR+iihkmcPfpG3xVSrWyvWaam14tL9yWVCi8SkvQVHC9X6tNyt1RBcKMAlz4CQ4Ac8tI6eHPyWIbRr6TobIuMvHl6h6eW7vQ4oqrfRVNxq46WiiMkz+TQeQ6knoArl10KYOc3hEMYub3Yourhw9Q2ZzYrtdsVLhq7ClgLy0e8kD+Co0663Ucaa+He2TypjXwnLj3Izt3DNLe4pnWS5l00Ptw1UOgjPLcEj5ZWLtfPTNK+HB9qZmFCsXsS9Sno7TXVlzNuhg/Ow4tewnZmDhxJ8Arlmqrqq6Vvh2EUa5Slu9pa1XDdLRXGG3Vl7jZWSYGmOlc5rCeWXah/BVK9oTsrdsa24rx5/IkdG7JRc+Pl9zezguqi4gp7bWTDsZ2Pe2oiHMNAzseRyR481G9qxlp3bBcVjg/E26tJWKDfArOJ7VDZbsaGCd82mNr3OeADk5228sfNW9FqJ6mrpJLHEiur6Oe7zKlXCIIAgCAIAgCAIAgCAID0YJAPitZtxi2jaEVKSi+1on3Q92IA9zGAvH/h+EbdVZbL9S5fFnsvxFZKnSQrjwTfH4IrwCQvYPB4vHAZGcAjPgs8jG9l4PCcJnuEmo8yzewRWprSO9gLw+iudm2d+Ha5enH9+Z7vWUdFsZVz5xjH14FavcnhQgCA+ifkw7AUNdoLfStYyOunG3wyvN7c3ukhn9J0NHjdeOZwVc6d9ynbUBxqnSO1x7l2rPhzXfqUVUnH9OOZQl+p55n0Th1o4Y4QmnueI5JnOlbC7GcloAb8dOfivN6t9d1ijVxxhZ+OcnRq/KpbkcjwhcZbLc2Vb6KeeCSMxuMUZJAJG48eS7O0KY6mpwUknz5lSifRS3sN+RYX+horxc5LhSXB0QmwXR1NNK0tIHQ4VbSW2aepVThnHamvqSWwjZLeT+RLstdb+Fqac07au5V8wAJZSvYwY5DJHLz+5Q6mq3WyW9iEV4ps2rlGjOE234Mr+Fb/AA27iCrrLxmM1eXOeWkdm4nPLnj+Ssa7Ryt08a6eO6aUXKFjlPtLSusjPpCeIa6vgjtL5WTNlLjl2w0tx5kKrVqn1bqlcHv4xj+SSVS6TpZP2S7st5g4g4kmmo8mloKbQ1zhjW6RwyceGI8KjqdLLS6ZRnzk8+n+yeuxW2+zyRwvGVRRVN9rZaZtT6SZy2V0jmmMhgDO6AMj2RzXe2bCyFEVLGMcMc+PHiUdQ4SsbXMol0SAIAgCAIAgCAIAgCAIDw8kD4os4ZI6um7Jw7w2Xgb3dsrXtx5Piu5p9h9BoVG1tAsvL5PvTXb9O810tvMj/rnDSDjunmurrPxFDcXVub+X3+RxtJ+G5qbeq/SuWHz+i+ZcRQQxtAjjaMeS8zdqbrnmybb8/wDEelp09VMd2uKSMnxRSDD2NPwUcbbIP2ZNeTwSSqhJe0k/NZK+6QP7LMRLmg5Leq6uw7KqtYnY+fBefj/BzNuRut0TjBcuL8l3fyU+V708D5BZB61pc4NaC5zjgADJJ8lhtJZZklwU91pZe2pqWvikbyeyF7T88KCc6LFiUoteaNkrE/ZTXwPpVXNX0vBDan6+S5mBo7QR5kD3EDOMea8zXCqzXbvBQz8Doy3lTn+75nzisivFZJ2tZDcJnge1LFIcfMbBelr6vWsVuK8mjnSVkuMkzpuC7dW3e3zPN5uFLFA4MjZDM4AbZ5ZXM2jfVRYl0cW33lrTVynFveaXmSOC7/TU7q914vL3h0gbAKmUuy0Z7w9+VDtHR2S3FTXjhxwjbTXJJ70jma3iG5yVtRJDdKtsT5HFjWTuAAztjddWrQ0KuKlBZ8kVZXTcnh/Mn8KzXG73T0IzxOLmulfPUU7Jn7YHtOGfAKvr41aerpMPuwm0vREtEpzlu/ck8TXi62quNsfVwVMMbGkB1JHpB6DGOii0Ok090OmUWm33v6mbrpwe7nK8iRwxxnS0FLUC5txO6Tuej0zWAtxtnGOuVHrdlztnHo3wx2t/ybU6qMYve5nFzSGWaSVx3kcXH3krtwjupR7im3vNswW5gIAgCAIAgCAIAgCAIAgNkOoytDXYJ2yFy9sU0z0k5WL9KyvM62xdRdTrIRqf6nh92C+gw2MAL54uR9DmsviZSShmBvv4DJTJhRPS2qEUk3o0nZx+2522OvL3LbcnjOCPpad5Q3llhzhp8lr2kiic/Us0VDwBgc8L6LsnUvUaOE3z5P4Hzna+mWm1k4Lk+K+JqXSOaesc5j2vY4tc05a5pwQfFYaTWGZJfra5/tOu/wAS/wDmoerUe4vRGXZP3n6j1rc859ZV3+Jf/NZ6tR7i9EY6SfvP1Drrcy0g3KtIIwQah5B+9Or0rlBeiM9JPvZOtHFFxs9GaSkEPZFxedbM7n4qtqNn06ie/LJJXfOuOI8jWL64N0i22wDlj0b/AFW/U178vUx03gvQwmvL5Yns9At7NQxqZT4I+9ZjpVGSe838Q7W1jCMbHeamy1Uk9I2MyPbpzICcDKzqtJHUxUZ8kYqtlW8olVPEclXO+eptdukmf7T3RnJ+9Rw0ChHdjOSRu73J5cUaTemFpAtFtGRzEZ/mt1pH/wCyXqY6X/5RVdTkb5+CtohCAIAgGf4rXIJElBWxQCeSkmZDz1lhxj/JU4bR0llvRQtTkuxNErotjHecXgjq8RBAEAQBAEAQGcLtMrSuftWDnorEu79jp7GsUNoVN9/7ot4Zdl81XI+mygSGSuZNFKzGuJ4cAeR8lvGWHkr2VKcZRlyawSZ6+smE7XPjjjn/AEjWMznbGd/ID5KWV05LHYVKtBRVutJtrln/AD9+8gSS4B8lAdJRKmqdqmJ8l7z8Oxa0Sb72eA/Esk9dhdkUaV3Tz54ThpOM4WGDsuG+DaW5iofU3BskbNIb6FINj11amnphcXW7TspaUIcfH7Mt06WM+LfoR7PwvSXC+SUbq9slOGSPBpZAXtDXNA1Etxvq+4qTU7QsqoU9zD4c+XJvhx8DENPGVmM8PAlz8JWyGz3K4morCKeSRsI1sw7QdO/d/WBUUdo3yvrqwuKWefbx7+7Bs9PDcck3wOfoaayyUzXVt0qIZznVGykLw3f9bO66FtmqUvYgmvNIgSrx7UvkXsHB9BVWd9zprrN6Oxjnd+n050+8qjPal0LuhlDj5k8dNFw31I18K8LUd1sc9yuE1RHoe8NELmgFrQM5yDvnUPgs6/X2UahVVpPOOee3492DWiiM63OTKG3QWuaOT1hXz0789xsVP2moeK6F0r010cE+/jghjGv+5/I6O9cH2yyU7J6+7zsZI/s26KbUc8+WfJczTbTu1MnCutZXiWLNNXWsyl8jVwvwxb77UV+Kqr9Gg0NilY1rHPJznIIPLA+a312vu00Ieyt55z24/Y1pohY3x4I5mujjhrqmKBznQxzObGXHJLQdiV1KZSlXFy5tFaSSk0jQpTAQBAS7M+Ft2pDUY7MSjnyzju/+WFydu9M9m39X/Xuv7/LJZ0e71iG/yz/r54PoUtUzs39qRox3tXh5r4fRO53RjSnv54ef+cz2Mq47mXyPmkhb2j+zzo1HT7ui/Qde9ure544+Z4Z4y8cv8/gxW5gIAgCAIAgHULEoqSwzOWuKeGuT7n3m+Oo04DjhfNdpaGWiucf7Xy8vqfVdla+G0NOpr9S5rx+hJFQPEqhxOg6w6raB7X3pkKpkaSqLjgFX9Hs3U6qaUYtJ9rXD4fY52t2ppNDFuclve6nlv4dhoJJJJX0TT0R09UaockfMdTqLNTdK2zm+P2CnID1jXvcGxMe95OGtY0uJPgAOqw2ksscew+jcO1FDw/T0lmne19fWzfXtjd+hLhsHEdeQ+K8zrI2auUtQl7MeXjxOjTKFSUO18zZwXa4LNX3x8c0csEJYyN7Hh2GgFxB89xn3LG0dTLUV1LGG/wDRnT1KuUzXxdVmDgSMljGS1GkuZG0NBJOp2wWdn1517XYv44GNRLFHiyNxFY7NYLJTVMluFRUksjcHzvaCcbnY+Sl0mr1OqvcVPC49iNLaqqoZ3Smn4vcbHJaKa3R08DozH3ZXPLQefMK5HZqV6vlPLTz2EL1D6PcSwdNB/Rf5M8juvfTFw/vSEn/6XNb6fafx/YspbmmOG4ao/T79Q0+kmPtQ9391vePzxj4ru6y3otPOXh9inTHfsS7zqvyqSTGegiLCKfDnB2Ni7w+S5ew1DE5dvD0LOtb9ldhP/J+0UfCVVW8u0fJJk/2RpH/qq21n0msjX5L1N9Kt2lvvPmhcXuLjzcclenSxwOdnPFhZAQBAenw5rAMzPM6MRunmc39VzyW/LKrQ0WnrsdsK4qT5tJJ+uMm8rbJR3ZSeO7L/ANGtWjQIAgCAIAgCAIAVBfp6tRDctimifTam7S2dJTLDMdA/2SuQvw5oFLOH6s7r/FW0XHdTS+B7jHLmunTodNT/AMcEv39Tk6jaWs1P/LbJrz/hADCtlBJLkeoZCAzhmmgcXU8j43lpGpji048MhaTrjPhJZM5a5HX0tpuFHaaeplorAynLGubNUyODjq3GTjmuNPU02WuClPPcsFtVzjFNxjjxMqQsbPE2o+izKYu+s7Oc5A64GOaWJ7rcekz2cDMWs8d3HmaOOprS00LLIad2kue8wOBwRjTn5n5LfZkb3vu/PxNdVKCxuFi0XqThR17qL5IAInSNhdAw9cNGT47fNVm9PHVdXhV4ZyyT8zot9yOPrL3cK2mdTVNWHxP5jQ0cj5BdqvSU1S34R4rzKcrpTWGzoOIeLKK6WOK1UNPVxuBjBMjWYIb0GHE/cufpNnW0ah3Taa49/wBET26mNle5FM3cOMi4VoJrvdW4rJ2aaWmOzyPPwyfuUWslLXWKin9K5vsN6l0EXOXMlm60N34Kk9fVbI6gyPLHYy4PByMNG/XHuUXQWafXLq8crC9DZ2Qsoe++JNrM2v8AJo2Nw0vfTtYcfrPP+qhr/O2nnx/Ykn7Gm4nzNeoOZgIAgM4o3Sv0sx7zyWspKPMt0aK29b0eC8TZPSTQN1Pbln6zdwtYWxlwRpdprKf1Lh3mhSFfIQBAEAQBAEAQBAEAQBAEAQBAeOGoEZ2KdoOgqeL7nVU7aepioJoG4xHJTahty6rnw2ZRCW/FtPzJ3qJtYeCJ67f+zLR/gmqbqi9+X/ZmvSPuXoRKysdWOYXU9LDoBAFNCI858cc1JXUq0+Lee95NJSz2JeSLGDiq7w0MdE2eE08TGsbG6BjhgcuYVaWztPKx2NcX25f1JVqLFHdzwMXcR3AEB7aQeH5nGP8AJbLRUvk3/wBn9THTz8PRHn0luf8A05IIjjAdFTRtPz0p1Ch8038X9R08/wDEVlRPNVTGaolklld7T3uySrUK4wjuxWERNtvLNeBvgLbBgt7nxJcrnQNoat0Rp2lpDWR45clTp0FFNnSQXEmnfOawyoV0hCDkZxROmdpaNupWkpbp1NHoN/Flq4d3f9i5o6RsQAxuqk7MnZb7Ce2JpaWvALXDBBUDk85RHOKnFp9pzNXD6PUyRDcMO2fBdKue9FM81dX0djj3GpbkYQBAEAQBAEBnDDLUStigYXyPOGtHUqK++vT1u22WIrm2bRjKclGPMl3C011ua19VBhjtg5rg4A+BXO2ftrRbQk4aeeWuzkTX6W6hZmiCuqiALJgIAgCAIAgKya+0UNybQOLzKTgkN2BXPu2lRVZ0cnxJ46eco7yOks9nq7rMBDDIYQe/KGEtHlnlnyWu0Now0lTkuMuxdvn5ELjPHsrJ2FNZpKJjRTW9wPIvLe874r59rNTr9XLNucd3Z6EEqdS/7GbZKKsmYWTUb3tPR7dQVWuGprlvRTWO7gadDqV/Y/Q56+cM1MDfSKKjn0/88QjJIHiF7TYu2Lp/k6vn2S5J+BYjC3+6LRxN0vNJa3xMqi/VJy0tzgeK7eo2hTp5KM3xJ66J2JuJYNIc0OHIjIV1NNZREz1ZMBDJtp4HznYYao5TwdnR6DdSsuXHu+pdUtMImhrQqc5tnTk2TWNDRk81C+Jqaa2rZTRFzt3H2WjmVvXW5vCIb74Uw3pM5yaV00r5Hc3HK6MYqKwjz1s3ZNzfaYLYjCAIAgCAIAgJlnrBQXCOdzS5oBaQOeD1C5O3NBPaGhnp63iT5Z5ZXeWdJeqLlOSLi/X6nraE00Bc8vLSSWkBuN+q8l+Gvw1rtFrOs6nCSTSSec58uxHT2jtCi2ro6uOe3HI5sctl9CRwwsgIAgCAIAgNctjoZuxr/RQ+q1EFwz94+S81eqJbVlXe0o7qa7MvPHzNVrZ1WdG3hY7f4O54Ur6yjtPYDRExr3EDRknPj/vouLt3Wf8AmYqkmsLx+Bq9fbW92GMepuuV8u8MIfSzwEtkaZBKzGI894jzxlcZayzLy/kaR2pdn2n8issPG1bfpBPbp2GiZqZKZodMgeCMYGcYIJ+5SWai6nhLn/sm1Gs1Wne7ZjPPlwxxOkZeK4sOmWMvHLLNio+u24zwIltO9rs9D5lNY6W6XSKWvpM6Xk6TkNxnl7l7DbU9N1N2QknZhJcePyM266VdT3JLLPSA04b7I2HuXpo/pRMwtjBCrKmSKQMZjlk5+K2S4cTvbJ0tcodLLnnH7FpZrtHI9lPO0Me7ZrxsCfNVrqGlvReUdWdXajpWtDR0yqGclc0VtYymZlxy4+y3xUldbm8IhuvhTHel8F3nPTyyTyF8py7+C6EYqKwjz9t0rZb0jWtiIIAgCAIAgCAIAgCAIAgLLhuiguN2gp6h31LnEc9nODcgKnrbpU0uUOaM0uMrlWywgs1PEahleXtkjbpaGjPfzvlcV7Qu4KDOl0EDn5G6ZHADGDjBXo65b0UznSWJGK3NQgM2SyR/o3lvuVXU6LT6pJXwUsd5pOqFn6kmXlhrTJDNA9xL86x5jqvG/iHZdemULtPBRjyaS7e/+PQpaiiNccwWESJpCc+Yx4ryrOdvcSPRQx0rSyFrGtJ1EMYG7/BZbbeTedm++JYPq20tJLO8+y3ujxJ5K9s7SS1eojUlwfPy7SfTx35Y7DlTUTuGDKSvotWydBTNTrpimvA6MdPTF5UTUukTBAQ66HV9azn1C3i8Hb2RrIwzTP4MrIoxC5zmZ7xzjzWFBQbZ6BRwdrSXMeqoZZTmYtxgdcdVQlR+a0uRzNZdHT8Xz7isllfM8vlOXFXIxUVhHm7LZ2y3pswWSMIAgCAIAgCAIAgCAIAgySaGkfVzhjQdI3JUVtqrWStddh7keZOlMdpMscmWRyuEsczBvE//ACIIzlU3+csvy80V03W8rmSJ+Km1sWKmkbJUgaRUQv0h48wqP9IzPMZYj3HYp2hKcMTjxKFzi5xJG5OSu7GKjFRXYQ5bfE8WxgIAgJdvjzI+ZziGwt1DT1J2XC2/qeh03RxjmVnspeZX1Mt2vHfwJEVyZymY44OxC4Nn4SuUE67E3254LPw+hRezppLEuJm6504GWRvJ6ZCiq/CmrcvzJxS8Mv8AhBaCzPFmqWQ11G+RznB8He052x1XQ2dQ9k7R6rLjGxZi+3h2f55k2ng9Pa63xzyK7oM88L2B0AgCAIDTJSxPOoNwfHK2Umi/VtLUVR3U8pd/H0NrQGtDWjAHILUqW2ytm5zeWeoRhAEAQBAEAQBAEAQBAEB6zGsauRIyVh5w8GJJtNHQzSxUETDTFuvTjycOnxXLSdj9o5ssV8FzKGpq31jzkaWnmQeauVVYN6qXN70jU0Bow0YCs4wX0j1DJ0do4UluFCal87Y9cZfA0b5PTUegXG1O14VW9HFZxzLdelc47xWvsV3Y8tfb6jIONm5V6Ou0zWVNEPQWrhgx9S3T9n1H2Ft13Te+vUx0NnulhbbPXinrBLSSRksGkPGNXPYLz23LqrZ6bckmlNP5lTVaeyW7w7SuFmumP+AqPsL0L1um99epb6KzuHqa5/8AYVH2Fjrum99epjorPdJ9BaK4UNcH0sjXlndYW7u9y8/tC6qzaulsjJYWc/IrWU2PUReO8g+pbpv/AEfU/YXoOu6b316lrorPdPfUl0/Z9T9hZ67pvfXqOhs9011FquFLEZaiinjjHN7mbBbQ1NM5bsZJsw65pZaIamTyaBZAQBAEAQBAEAQBAEAQBAEAQDx8CEB68l8fZuJLPAla7kSN1Qk8tHgAGwGy2JMY5BAEBa2riC4WuIxU743xZJDJmag0nwwRhUdTs6jUS3pZT8P8ZNC+cFhFgOObyOTKL9y78Srf0XTd8vVfQk65b4en3Pfp1ev1aH9y78Sf0TTd8vVfQx1u3w9Pua5eM7rKWl8NA4tOWkwu2P2lrLYOkk/az6r6Gs9ROf6kn8PuZ/Ti8/1dB+4d+Nbf0TS98vVfQ261Z4en3H04vP8AV0H7h340/oml75eq+g61Z4en3MHcZ3R0jJHQ0GtnJ3Yu/GtZbB0knl59V9DV3yclJpcPD7mz6c3royh/cu/Etv6Jpu+Xqvobdbt8PT7j6dXr9Sh/cu/En9F03fL1X0M9ct8PT7nh44vJaWuZQlp2IMLsY+0srYumXFOXqvoOuWtYaXp9znqmXt53TdjDCXc2QtLWj3Ak4XTrhuRUct+ZWby8/sa1uYCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgP/Z" alt="챌린지 배너 이미지">
				<div class="challenge-status">
					<p>1일차 챌린지 진행 중</p>
					<p>20명이 챌린지를 진행중입니다.</p>
					<p>인증 횟수:
						<%
					int count = 5; // 예시로 5번 반복
					for (int i = 0; i < count; i++) {
					%>
						<span class="smile"> <img src="https://cdn-icons-png.flaticon.com/128/10335/10335885.png" alt="smile">
						</span>
						<%
						}
						%>
					</p>
				</div>
			</div>

			<div class="challenge-row">
				<div class="challenge-section">
					<h3>완료된 챌린지</h3>
					<div id="completedChallenges" class="carousel slide" data-bs-ride="carousel">
						<!-- Indicators -->
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#completedChallenges" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Completed 1"></button>
							<button type="button" data-bs-target="#completedChallenges" data-bs-slide-to="1" aria-label="Completed 2"></button>
							<button type="button" data-bs-target="#completedChallenges" data-bs-slide-to="2" aria-label="Completed 3"></button>
						</div>

						<!-- Slideshow -->
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="https://via.placeholder.com/1180x300" class="d-block w-100" alt="완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>완료챌린지1</h5>
									<p>챌린지를 성공적으로 완료했습니다!</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="https://via.placeholder.com/1180x300" class="d-block w-100" alt="완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>완료챌린지2</h5>
									<p>챌린지를 성공적으로 완료했습니다!</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="https://via.placeholder.com/1180x300" class="d-block w-100" alt="완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>완료챌린지3</h5>
									<p>챌린지를 성공적으로 완료했습니다!</p>
								</div>
							</div>
						</div>

						<!-- Navigation controls -->
						<button class="carousel-control-prev" type="button" data-bs-target="#completedChallenges" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">이전</span>
						</button>
						<button class="carousel-control-next" type="button" data-bs-target="#completedChallenges" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">다음</span>
						</button>
					</div>
				</div>

				<div class="challenge-section">
					<h3>미완료된 챌린지</h3>
					<div id="incompleteChallenges" class="carousel slide" data-bs-ride="carousel">
						<!-- Indicators -->
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#incompleteChallenges" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Incomplete 1"></button>
							<button type="button" data-bs-target="#incompleteChallenges" data-bs-slide-to="1" aria-label="Incomplete 2"></button>
							<button type="button" data-bs-target="#incompleteChallenges" data-bs-slide-to="2" aria-label="Incomplete 3"></button>
						</div>

						<!-- Slideshow -->
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="https://via.placeholder.com/1180x300" class="d-block w-100" alt="미완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>미완료챌린지1</h5>
									<p>아주 잘하고 있어요 !!!!</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="https://via.placeholder.com/1180x300" class="d-block w-100" alt="미완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>미완료챌린지2</h5>
									<p>끝까지 화이팅 !!!!!</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="https://via.placeholder.com/1180x300" class="d-block w-100" alt="미완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>미완료챌린지3</h5>
									<p>끝까지 화이팅 !!!!!</p>
								</div>
							</div>
						</div>

						<!-- Navigation controls -->
						<button class="carousel-control-prev" type="button" data-bs-target="#incompleteChallenges" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">이전</span>
						</button>
						<button class="carousel-control-next" type="button" data-bs-target="#incompleteChallenges" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">다음</span>
						</button>
					</div>
				</div>
			</div>
		</div>
		
	<%@ include file="../common/footer.jsp"%>
</body>
</html>
