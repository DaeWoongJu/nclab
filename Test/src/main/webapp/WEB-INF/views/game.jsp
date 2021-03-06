<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.duck {
  --c: #f9d41f;
  --b: #f09123;
  margin: auto auto 0;
  width: 350px;
  aspect-ratio: 1;
  position: relative;
  z-index: 0;
  cursor: pointer;
}
.duck:after {
  content: "";
  position: absolute;
  width: 40%;
  height: 20%;
  left: 35%;
  top: 30%;
  z-index: -1;
  background: 
    radial-gradient(violet 63%, #0000 71%) 20% 20%/10% 20%,
    linear-gradient(violet 0 0) 50% 71%/10% 10%,
    conic-gradient(violet 45deg, #0000 0) 69% 50%/ 30% 30%,
    conic-gradient(from -19deg, violet 45deg, #0000 0) 20% 80%/ 30% 30%,
    linear-gradient(violet 0 0) 50% 29%/5% 20%;
  background-repeat: no-repeat;
  filter: 
    drop-shadow(0 0 0 #24e0e9) 
    drop-shadow(0 0 0 #00d18f)    
    drop-shadow(0 0 0 #f7d865) 
    drop-shadow(0 0 0 #fc639d)   
    drop-shadow(0 0 0 #00d18f) 
    drop-shadow(0 0 0 #24e0e9);
}
.duck:before {
  content: "";
  position: absolute;
  background: var(--c);
  border: 9px solid var(--b);
  border-bottom: 0;
  inset: 53% 8% 0% 8%;
  border-radius: 999px 999px 0 0;
}
.duck .arms:before {
  content: "";
  position: absolute;
  width: 15%;
  height: 32%;
  background: var(--c);
  box-sizing: border-box;
  left: 17%;
  bottom: 2%;
  border-radius: 30% 35% 50% 50%;
  border: 9px solid var(--b);
  transform: rotate(33deg);
  transform-origin: top left;
}
.duck .arms:after {
  content: "";
  position: absolute;
  width: 12%;
  height: 28%;
  background: var(--c);
  box-sizing: border-box;
  right: 15%;
  bottom: 5%;
  border-radius: 30% 35% 50% 50%;
  border: 9px solid var(--b);
  transform: rotate(-33deg);
  z-index: -1;
  transform-origin: top right;
}
.duck .head:before,
.duck .head:after {
  content: "";
  position: absolute;
  inset: 12% 10% 14% 10%;
  background: var(--c);
  border-radius: 50%;
  border: 9px solid var(--b);
  border-bottom-color: #0000;
  z-index: 3;
}
.duck .head:before {
  clip-path: polygon(0 100%,100% 100%,100% 30%,70% 15%,57% 28%,40% 18%,23% 30%,0 17%);
}
.duck .head:after {
  clip-path: polygon(0 0,100% 0,100% 30%,93% 30%,70% 15%,57% 28%,40% 18%,23% 30%,0 17%);
  transform: rotate(0deg);
  transform-origin: 94% 27%;
  transition: .5s;
}
.duck .eyes:before,
.duck .eyes:after {
  content: "";
  position: absolute;
  width: 9%;
  height: 10%;
  background: 
    radial-gradient(farthest-side, #fff 94%, #0000) 20% 16%
    content-box no-repeat,#000;
  background-size: 30% 30%;
  border-radius: 50%;
  left: 32%;
  top: 44%;
  box-sizing: border-box;
  padding: 1%;
  transform: rotate(6deg);
  z-index: 4;
  transition: 0.4s;
}
.duck .eyes:after {
  width: 8%;
  left: auto;
  right: 20%;
  top: 43%;
  transform: rotate(-6deg);
}
.duck .mouth:before {
  content: "";
  position: absolute;
  z-index: 9;
  inset: 57% 28% 33% 43%;
  border-radius: 25px 25px 42px 49px;
  padding: 2.5%;
  border: 6px solid #c23a00;
  background: linear-gradient(#791004 0 0) content-box, #f55e1e;
  transition: 0.4s linear;
}
.duck .mouth:after {
  content: "";
  position: absolute;
  width: 12%;
  height: 5.9%;
  right: 26%;
  top: 57%;
  box-sizing: border-box;
  border: 5px solid #c23a00;
  border-bottom-color: #791004;
  border-left: 0;
  background: #f55e1e;
  border-radius: 0 50% 50% 0;
  z-index: 10;
}
.duck .mouth i {
  position: absolute;
  width: 14%;
  height: 14%;
  border: 6px solid #c23a00;
  border-right: 0;
  border-bottom: 0;
  border-radius: 41% 0 0 0;
  background: #f55e1e;
  transform: rotate(45deg);
  clip-path: polygon(0 0, 96% 0, -4% 100%);
  top: 51.5%;
  left: 51%;
  z-index: 11;
}
#duck {
  position: absolute;
  top: -9999px;
}
#duck:checked + .duck:after {
  filter: 
    drop-shadow(43px -23px 0 #24e0e9) 
    drop-shadow(-59px 4px 0 #00d18f)    
    drop-shadow(41px 62px 0 #f7d865) 
    drop-shadow(67px -68px 0 #fc639d)   
    drop-shadow(-100px -36px 0 #00d18f) 
    drop-shadow(40px -55px 0 #24e0e9);
  top: 0%;
  opacity: 0;
  transition: 0.5s 0.6s, opacity 0.3s 0.8s;
}
#duck:checked + .duck .head:after {
  transform: rotate(120deg);
  transition: .5s .4s;
}
#duck:checked + .duck .eyes:before,
#duck:checked + .duck .eyes:after {
  background-size: 100% 100%;
  transform: scale(1.1) rotate(6deg);
  transition: 0.4s cubic-bezier(0.12, 0.69, 0.72, 2.2);
}
#duck:checked + .duck .eyes:after {
  transform: scale(1.1) rotate(-6deg);
}
#duck:checked + .duck .mouth:before {
  inset: 57% 28% 10% 43%;
  transition: 0.4s cubic-bezier(0.12, 0.69, 0.72, 2.2);
}
#duck:checked + .duck .arms:before {
  transform: rotate(33.1deg);
  transition: cubic-bezier(0, 200, 1, 200) 0.4s;
}
#duck:checked + .duck .arms:after {
  transform: rotate(-33.1deg);
  transition: cubic-bezier(0, 200, 1, 200) 0.4s;
}
body {
  min-height: 100vh;
  margin: 0;
  display: grid;
  overflow: hidden;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input id="duck" type="checkbox">
<label class="duck" for="duck">
  <div class="head">
    <div class="eyes"></div>
    <div class="mouth"><i></i></div>
  </div>
  <div class="arms"></div>
</label>

</body>
<script type="text/javascript">


</script>
</html>