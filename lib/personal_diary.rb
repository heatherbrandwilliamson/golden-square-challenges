def make_snippet(string)
    words = string.split(' ')
    snippet = words.take(5).join(' ')
    snippet += '' if words.length > 5
    snippet
end