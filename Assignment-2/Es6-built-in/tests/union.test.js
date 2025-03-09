import union from "../src/bundle.js";

test("expected union([1,2,3],[2,3,4]) to be [1, 2, 3, 4]", () => {
    expect(union([1, 2, 3], [2, 3, 4])).toStrictEqual([1, 2, 3, 4]);
});

test("expected union(['a'], ['b']) to be ['a', 'b']", () => {
    expect(union(["a"], ["b"])).toStrictEqual(["a", "b"]);
});

test("expected union([{ a:{ b:10}}],[{ a:{ b:20}}]) to be  [{ a: { b: 10 } }, { a: { b: 20 } }]", () => {
    expect(union([{ a: { b: 10 } }], [{ a: { b: 20 } }])).toStrictEqual([
        { a: { b: 10 } },
        { a: { b: 20 } },
    ]);
});

test("expected union([{ b: 10, c: { z: { t: 5, _t: 5 }, f: [4] } }, 2],[{ b: 10, c: { z: { t: 5, _t: 5 }, f: [4] } }, '2']) to be [{ b: 10, c: { z: { t: 5, _t: 5 }, f: [4] } }, 2, '2']", () => {
    expect(
        union(
            [{ b: 10, c: { z: { t: 5, _t: 5 }, f: [4] } }, 2],
            [{ b: 10, c: { z: { t: 5, _t: 5 }, f: [4] } }, "2"]
        )
    ).toStrictEqual([{ b: 10, c: { z: { t: 5, _t: 5 }, f: [4] } }, 2, "2"]);
});
