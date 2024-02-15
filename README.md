# memberly

## What's in the portal
- Number of active members
- Meeting Logs
- Member Expiry
- Member Checkin (to club meeting)

bin/rails generate model member name:string 
bin/rails generate model leader name:string



```js
    var date = new Date(Date.UTC(2012, 11, 12, 3, 0, 0));
    var dateString = date.toLocaleTimeString();

    if (dateString.match(/am|pm/i) || date.toString().match(/am|pm/i) )
    {
        //12 hour clock
        console.log("12 hour");
    }
    else
    {
        //24 hour clock
        console.log("24 hour");
    }
```