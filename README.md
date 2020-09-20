# molokai
A rewrite of [tomasr](https://github.com/tomasr)/[molokai](https://github.com/tomasr/molokai) but with the file structure of [machakann](https://github.com/machakann)/[vim-colorscheme-reki](https://github.com/machakann/vim-colorscheme-reki).

## things
In gui from what I have tested, it should be the exact same as the orginal molokai.
Because the file structure, the 256 terminal will looks kind of weird.

Because I'm so stupid, I don't know how to do the

```
let g:molokai_original = 1
```

thing.

So, what I did instead was change the color in light mode.

So, basically, what this mean is

```
let g:molokai_original = 1
```

is equal to

```
set background=light
```

___

and

```
let g:molokai_original = 0
```

is equal to

```
set background=dark
```

___

And don't even talk to me about the
```
let g:rehash256 = 1
```
thing.

## Screenshots
### gui
#### set background=dark
![gui, dark](https://i.imgur.com/NbUA0F3.png "gui, dark")

#### set background=light
![gui, light](https://i.imgur.com/3thD8YP.png "gui, light")

### 256
#### set backgound=dark
![256, dark](https://i.imgur.com/3NZncTh.png "256, dark")

#### set background=light
![256, light](https://i.imgur.com/70wTOQ3.png "256, light")

## Expression of Gratitude
Thanks to

[tomasr](https://github.com/tomasr "creator of molokai"), creator of molokai

[machakann](https://github.com/machakann "creator of reki"), creator of reki

[Wimer Hazenberg](https://github.com/monokai "creator of monokai"), creator of monokai

[uloco](https://github.com/uloco "creator of the snippet"), for the code snippet in the screenshots
