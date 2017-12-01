%sh{
    black_lighterer='rgb:383838'
    black_lighter='rgb:2D2D2D'
    black_light='rgb:1C1C1C'
    grey_dark='rgb:585858'
    grey_light='rgb:D8D8D8'
    magenta_dark='rgb:AB4642'
    magenta_light='rgb:AB4434'

    # i changed these for material
    green_dark='rgb:C3E88D'
    purple_dark='rgb:C792EA'
    cyan_light='rgb:89DDF3'
    orange_dark='rgb:F78C6A'
    orange_light='rgb:FFCB6B'

    # this ones are new
    normaltext='rgb:EEFFFF'
    background='rgb:263238' 

    ## code
    echo "
        face builtin default+b
    "

    ## markup
    echo "
        face title blue
        face header ${cyan_light}
        face bold ${orange_light}
        face italic ${orange_dark}
        face mono ${green_dark}
        face block ${orange_dark}
        face link blue
        face bullet ${magenta_light}
        face list ${magenta_dark}
    "

    ## builtin
    echo "
        face Default ${normaltext},${background}
        face PrimarySelection white,blue
        face SecondarySelection black,blue
        face PrimaryCursor black,white
        face SecondaryCursor black,white
        face LineNumbers ${grey_light},${black_lighter}
        face LineNumberCursor ${grey_light},rgb:282828+b
        face MenuForeground ${grey_light},blue
        face MenuBackground blue,${grey_light}
        face MenuInfo ${cyan_light}
        face Information ${black_light},${cyan_light}
        face Error ${grey_light},${magenta_light}
        face StatusLine ${grey_light},${black_lighterer}
        face StatusLineMode ${orange_dark}
        face StatusLineInfo ${cyan_light}
        face StatusLineValue ${green_dark}
        face StatusCursor ${black_lighterer},${cyan_light}
        face Prompt ${black_light},${cyan_light}
        face MatchingChar ${cyan_light},${black_light}+b
        face BufferPadding ${cyan_light},${black_lighter}
    "
}

set-face module    'rgb:C3E88D'
set-face string    'rgb:C3E88D'
set-face operator  'rgb:82AAFF'
set-face function  'rgb:82AAFF'
set-face attribute 'rgb:F78C6A'
set-face value     'rgb:F78C6A'
set-face meta      'rgb:FFCB6B'
set-face type      'rgb:FFCB6B'
set-face variable  'rgb:EEFFFF'
set-face boolean   'rgb:F07178'
set-face keyword   'rgb:C792EA'
set-face comment   'rgb:4F6875'
set-face end       'rgb:766291'
set-face symbol    'rgb:89DDF3'
#set-face Default 'rgb:EEFFFF','rgb:263238' 

# julia code
add-highlighter shared/julia/code regex \b(true|false|nothing)\b 0:boolean
add-highlighter shared/julia/code regex (@\w+\s)|(\b([a-z]|[A-Z])\w+!?(?=\()) 0:function
add-highlighter shared/julia/code regex \bend\b 0:end
add-highlighter shared/julia/code regex (\.|:|~|`|!|\$|%|\^|&|\*|-|=|\+|\\|\||"|'|<|>|/) 0:symbol
add-highlighter shared/julia/code regex (0e-|(?<=[0-9])\.(?![a-z])(?![A-Z])(?!@)|\.(?=[0-9])|(?<=\[)end|end(?=\])) 0:value


# todo
# :as and :(
# $dstn in strings
# 'dstndstn'
# "dstnstdn"
