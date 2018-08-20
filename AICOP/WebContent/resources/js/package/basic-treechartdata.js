var config = {
        container: "#basic-example",
        
        connectors: {
            type: 'step'
        },
        node: {
            HTMLclass: 'nodeExample1'
        }
    },
   crm = {

        text: {
            name: "CRM",
            title: "",
            contact: "",
        },
      
    },

    orders = {
        parent: crm,
        text:{
            name: "Orders",
          
        },
		 link: {
            href: "javascript:loadFlowChart();"
        },
        stackChildren: true,
       
    },
    billing = {
        parent: orders,
        stackChildren: true,
        text:{
            name: "Billing",
            
        },
      
    },
    provisioning = {
        parent: orders,
        text:{
            name: "Provisioning",
          
        },
       
    },
    inventory = {
        parent: orders,
        text:{
            name: "Inventory",
           
        },
       
    },
    activation = {
        parent: provisioning,
        text:{
            name: "Activation",
           
           
        },
       
    },
    network = {
        parent: activation,
        text:{
            name: "Network",
          
        },
        link: {
        },
       
    },
	 mediation = {
        parent: network,
        text:{
            name: "Mediation",
            
        },
        link: {
        },
       
    },
	 mediation1 = {
        parent: billing,
        text:{
            name: "Mediation",
            
        },
        link: {
        },
       
    },


    chart_config = [
        config,
        crm,
        orders,
        billing,
        provisioning,
        inventory,
        activation,
        network,
		mediation,
		mediation1
		
       
        
    ];




    // Another approach, same result
    // JSON approach

/*
    var chart_config = {
        chart: {
            container: "#basic-example",
            
            connectors: {
                type: 'step'
            },
            node: {
                HTMLclass: 'nodeExample1'
            }
        },
        nodeStructure: {
            text: {
                name: "Mark Hill",
                title: "Chief executive officer",
                contact: "Tel: 01 213 123 134",
            },
            image: "../headshots/2.jpg",
            children: [
                {
                    text:{
                        name: "Joe Linux",
                        title: "Chief Technology Officer",
                    },
                    stackChildren: true,
                    image: "../headshots/1.jpg",
                    children: [
                        {
                            text:{
                                name: "Ron Blomquist",
                                title: "Chief Information Security Officer"
                            },
                            image: "../headshots/8.jpg"
                        },
                        {
                            text:{
                                name: "Michael Rubin",
                                title: "Chief Innovation Officer",
                                contact: "we@aregreat.com"
                            },
                            image: "../headshots/9.jpg"
                        }
                    ]
                },
                {
                    stackChildren: true,
                    text:{
                        name: "Linda May",
                        title: "Chief Business Officer",
                    },
                    image: "../headshots/5.jpg",
                    children: [
                        {
                            text:{
                                name: "Alice Lopez",
                                title: "Chief Communications Officer"
                            },
                            image: "../headshots/7.jpg"
                        },
                        {
                            text:{
                                name: "Mary Johnson",
                                title: "Chief Brand Officer"
                            },
                            image: "../headshots/4.jpg"
                        },
                        {
                            text:{
                                name: "Kirk Douglas",
                                title: "Chief Business Development Officer"
                            },
                            image: "../headshots/11.jpg"
                        }
                    ]
                },
                {
                    text:{
                        name: "John Green",
                        title: "Chief accounting officer",
                        contact: "Tel: 01 213 123 134",
                    },
                    image: "../headshots/6.jpg",
                    children: [
                        {
                            text:{
                                name: "Erica Reel",
                                title: "Chief Customer Officer"
                            },
                            link: {
                                href: "http://www.google.com"
                            },
                            image: "../headshots/10.jpg"
                        }
                    ]
                }
            ]
        }
    };

*/