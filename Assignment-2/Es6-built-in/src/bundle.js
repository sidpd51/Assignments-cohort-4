export default function union(arr1, arr2) {
    const combinedArr = [...arr1, ...arr2];

    const result = [];

    combinedArr.forEach((element) => {
        if (typeof element === "object") {
            if (!result.some((el) => compareObjects(element, el))) {
                result.push(element);
            }
        } else {
            if (!result.includes(element)) {
                result.push(element);
            }
        }
    });

    return result;
}

function compareObjects(obj1, obj2) {
    if (obj1 === obj2) {
        return true; // if both are primitive types & equal return true
    }

    // if anyone of the argument is of object type return false
    if (typeof obj1 !== "object" || typeof obj2 !== "object") {
        return false;
    }

    const keys1 = Object.keys(obj1);
    const keys2 = Object.keys(obj2);

    // if length of keys are different return false
    if (keys1.length !== keys2.length) {
        return false;
    }

    for (let key of keys1) {
        if (!keys2.includes(key) || !compareObjects(obj1[key], obj2[key])) { // if obj2 doesn't include key and 
            return false;
        }
    }
    return true;
}