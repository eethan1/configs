i3-msg -t get_tree -r |jq '..|.nodes?[]?|select(.window_properties.class=="Xfce4-terminal")|.window'  | xargs -I {} transset-df -i {} 0.7
echo 7122 > /tmp/jijijijijij
