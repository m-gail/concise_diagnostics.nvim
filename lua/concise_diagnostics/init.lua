local M = {}

function M.format(diagnostic)
    return diagnostic.message
        :gsub("is.*but never used.", "is unused")
        :gsub("is missing in.*but required in .*", "missing")
        :gsub("Type.*not assignable to type.*('.*') does not exist in type ('.*').*", "%1 doesn't exist in %2")
        :gsub("Type.*('.*').*not assignable to type.*('.*').*", "%1 not assignable to %2")
        :gsub(" cannot ", " can't ")
        :gsub("An ", "")
        :gsub(" an ", "")
        :gsub("A ", "")
        :gsub(" a ", "")
        :gsub(".*('.*').*implicitly.*('.*').*type.*", "%1 implicitly has %2 type")
end

return M
