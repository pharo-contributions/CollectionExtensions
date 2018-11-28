# CollectionExtensions

I am a project containing extensions of the Pharo collection API.

## Version management 

This project use semantic versionning to define the releases. This mean that each stable release of the project will get associate a version number of the form `vX.Y.Z`. 

- **X** define the major version number
- **Y** define the minor version number 
- **Z** define the patch version number

When a release contains only bug fixes, the patch number increase. When the release contains new features backward compatibles, the minor version increase. When the release contains breaking changes, the major version increase. 

Thus, it should be safe to depend on a fixed major version and moving minor version of this project.

## Install CollectionExtensions 

To install CollectionExtensions on your Pharo image you can just execute the following script:

```Smalltalk
    Metacello new
    	githubUser: 'pharo-contributions' project: 'CollectionExtensions' commitish: 'v1.x.x' path: 'src';
    	baseline: 'CollectionExtensions';
    	load
```

To add CollectionExtensions to your baseline just add this:

```Smalltalk
    spec
    	baseline: 'CollectionExtensions'
    	with: [ spec repository: 'github://pharo-contributions/CollectionExtensions:v1.x.x/src' ]
```

Note that you can replace the #master by another branch as #development or a tag as #v1.0.0, #v1.? or #v1.2.? .