// Board configuration: tang_nano_9k_lcd_480_272_tm1638_hackathon
// This module uses few parameterization and relaxed typing rules

module hackathon_top
(
    input  logic       clock,
    input  logic       slow_clock,
    input  logic       reset,

    input  logic [7:0] key,
    output logic [7:0] led,

    // A dynamic seven-segment display

    output logic [7:0] abcdefgh,
    output logic [7:0] digit,

    // LCD screen interface

    input  logic [8:0] x,
    input  logic [8:0] y,

    output logic [4:0] red,
    output logic [5:0] green,
    output logic [4:0] blue,

    inout  logic [3:0] gpio
);

    always_comb
    begin
        red   = 0;
        green = 0;
        blue  = 0;

        if (x > 100 & x < 300 & y > 50 & y < 100)
            red = 31;

        if ((x - 240) * (x - 240) + (y - 136) * (y - 136) < 100 * 100)
            green = x;

        // 31 is the maximum 5-bit number, 5'b11111

        // Exercise 1: Uncomment the code for a green rectangle
        // that overlaps red rectangle

        /*

        if (x > 150 & x < 350 & y > 70 & y < 120)
            green = 63;

        */

        // 63 is the maximum 6-bit number, 6'b111111

        // Exercise 2: Add a blue rectangle
        // that overlaps both rectangles

        // Exercise 3: Change color with keys

        // Exercise 4: Change position with keys

        // Exercise 5: Draw a circle

    end

endmodule
