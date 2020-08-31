difference () {
  union () {
    translate ([-0.5, 17, 4]) {
      difference () {
        cube ([24.2, 36.5, 11.0], center=true);
        translate ([0, 0, 2]) {
        }
      }
    }
    translate ([-18.5, 27.0, 5]) {
      difference () {
        cube ([16.0, 17.6, 13.2], center=true);
      }
    }
  }
  translate ([0, 1.5, 0]) {
    union () {
      translate ([-18.5, 27.0, 10.0]) {
        cube ([10.7, 12.7, 11], center=true);
      }
      translate ([-18.5, 20.5, 8.5]) {
        cube ([7.0, 6.0, 8.0], center=true);
      }
      translate ([-18.5, 37.0, 7]) {
        rotate (a=90.0002104591497, v=[1, 0, 0]) {
          cylinder (h=10, r=3.35, center=true);
        }
      }
    }
    translate ([0, 0, 0]) {
      translate ([0, 0, 2]) {
        union () {
          translate ([-0.5, 17, 4.5]) {
            cube ([18.6, 33.98, 9.5], center=true);
          }
          translate ([0.5, -1, 4.75]) {
            cube ([8.0, 10.6, 9.5], center=true);
          }
          translate ([-0.5, 27, 4.75]) {
            cube ([10.6, 35.6, 6], center=true);
          }
        }
      }
    }
  }
}
