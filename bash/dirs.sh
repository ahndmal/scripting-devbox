selectd ( )
{
   PS3='directory? '
   dirstack=" $DIR_STACK "
   
   select selection in $dirstack; do
      if [ $selection ]; then
         DIR_STACK="$selection${dirstack%% $selection *}"
         DIR_STACK="$DIR_STACK ${dirstack##* $selection }"
         DIR_STACK=${DIR_STACK% }
         cd $selection
         break
      else
        echo 'invalid selection.'
      fi
    done
}
