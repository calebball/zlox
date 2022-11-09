const chunk = @cImport({
    @cInclude("chunk.c");
    @cInclude("memory.c");
});
const std = @import("std");

pub fn main() anyerror!void {
    var my_chunk: chunk.Chunk = undefined;
    chunk.initChunk(&my_chunk);
    chunk.writeChunk(&my_chunk, chunk.OP_RETURN);
    chunk.freeChunk(&my_chunk);
}
