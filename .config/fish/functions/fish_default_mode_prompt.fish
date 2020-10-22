function fish_default_mode_prompt --description "Display the default mode for the prompt"
    # Do nothing if not in vi mode
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
        switch $fish_bind_mode
            case default
                echo (set_color --dim brwhite)"["(set_color --dim brcyan)"N"(set_color --dim brwhite)"]"
            case insert
                echo (set_color --dim brwhite)"["(set_color --dim brcyan)"I"(set_color --dim brwhite)"]"
            case replace_one
                echo (set_color --dim brwhite)"["(set_color --dim brcyan)"r"(set_color --dim brwhite)"]"
            case replace
                echo (set_color --dim brwhite)"["(set_color --dim brcyan)"R"(set_color --dim brwhite)"]"
            case visual
                echo (set_color --dim brwhite)"["(set_color --dim brcyan)"V"(set_color --dim brwhite)"]"
        end
        set_color normal
    end
end

