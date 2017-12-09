# Fake.File
```julia
Fake.File.extension() # => "mp3"

Fake.File.mime_type() # => "application/pdf"

# Optional arguments: dir, name, extension, directory_separator
Fake.File.file_name('path/to') # => "path/to/something_random.jpg"
Fake.File.file_name('foo/bar', 'baz') # => "foo/bar/baz.zip"
Fake.File.file_name('foo/bar', 'baz', 'doc') # => "foo/bar/baz.doc"
Fake.File.file_name('foo/bar', 'baz', 'mp3', '\') # => "foo\bar\baz.mp3"
```
