/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
    "JetBrainsMono Nerd Font:style=Regular:size=11:antialias=true:autohint=true",
    "Symbols Nerd Font:size=11:antialias=true:autohint=true"
};
static const char *prompt = NULL;            /* -p option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
    /*               fg         bg       */
    [SchemeNorm] = { "#ebdbb2", "#282828" },
    [SchemeSel]  = { "#458588", "#282828" },
    [SchemeOut]  = { "#98971a", "#282828" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines = 0;
/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
