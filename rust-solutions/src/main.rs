use std::fs;

fn main() {
    let instructions = fs::read_to_string("instructions.txt")
        .expect("Cannot read file...");
    let floor = follow_instructions(&instructions);
    println!("The floor is {}", floor);
}

fn follow_instructions(instructions: &str) -> i16 {
    let floors: Vec<&str> = instructions.split("").collect();
    let (mut up, mut down) = (0, 0);
    for s in floors {
        match s {
            "(" => up = up + 1,
            ")" => down = down + 1,
            _ => (),
        };
    }
    return up - down;
}