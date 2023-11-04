# demmand_service

```
[#f03c15] Demmand ENDPOINTS
    - "/bidder":
            To create a new bidde
            Method : POST
            Request Body :
                {
                    "name":"test-10",
                    "bid_amount":100,
                    "ad_space_id":5
                }

    - "/bidder":
            To fetch all Ad Space Bidders 
            Method : GET

    - "/bidder/{ad_space_id}":
            To Fetch a Specific Ad Space Bidder By Space ID
            Method : GET
            Path Param : url/1

    - "/bidder_by_name/{name}":
            To Fetch a bidder by Bidder name
            Method : GET
            Path Param : url/user1
            
    - "/bidder/{id}":
            To update bidding amount only by id
            Method : PUT
            Path Param : url/1 
            Request Body :
            {
                "bid_amount":100,
            }                           

```

## Docker Installation
```
1. system should have a docker install
2. buidl a docker image by following a command
    * docker build -t demmand_service . *
3. to run a image
    * docker run -p 9000:9000 demmand_service*    

```