export CLIENT=alp052-vc15.aus.stglabs.ibm.com
export SERVER=alp052-vc16.aus.stglabs.ibm.com
export BINDADDRESS=alp052-vc15.aus.stglabs.ibm.com
export PASS=aixsecurity
export USER=root


expect -c "
	spawn ssh -2 $USER@$SERVER date
	expect yes/no { send yes\r; }
        expect password: { send $PASS\r}
 	expect 100%
	sleep 1
        exit 1
"
 
