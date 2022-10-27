# bin/bash


# conf_path: /etc/proftpd/proftpd.conf
# custom_conf_dir: /etc/protpd/proftpd.conf.d

# place_user_creation_script: no
#user_creation_script_dir >> '/usr/local/etc/proftpd_user_creator'
#enable_virtual_users: no
#proftpd_params: []
#ftp_users: []

while IFS=, read -r  /etc/proftpd/proftpd.conf && etc/proftpd/proftpd.conf.d
do

   echo "I got:$/etc/proftpd/proftpd.conf | $/etc/proftpd/proftpd.conf.d"
done <myfile.csv

roles:
 - { role: proftpd,
     proftpd_params: [
        { key: PassivePorts, value: '13111 58777' },
	{ key: MasqueradeAddress, value: '8.8.8.8' }
      ],
	enable_virtual_users: yes,
	ftp_users: [
	 { name: "mister_paul",
	  uid: 4000,
	  gid: 4000,
	  home: /tmp,
	  shell: /bin/false,
	  password: mister_je_suis_admin_askip
	},
	{ name: "mister_paul2",
	  uid: 4001
	  gid: 4001,
	  home: /tmp
	  shell: /bin/false,
	  password: mister_je_suis_admin_askip
	}
    ]
}


# Permissions de mes utilisateurs
# chmod 777 nom du fichier (mister_paul)
# chmod 777 nom du fichier (mister_paul2)
