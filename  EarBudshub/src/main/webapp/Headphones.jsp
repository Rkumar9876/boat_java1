<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Wishlist - BomBerZ</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
           background: linear-gradient(to bottom right, #ecf6f7, #daf6f6);
        }

        .top-banner {
            background: black;
            color: white;
            text-align: center;
            padding: 10px;
            font-size: 14px;
        }

        .top-banner span {
            color: yellow;
        }

        .navbar {
            background: #fff;
            padding: 15px 30px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
        }

        .navbar .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .navbar .menu a {
            margin: 0 15px;
            text-decoration: none;
            color: #111;
            font-weight: 500;
        }

        .navbar input[type="text"] {
            padding: 6px 12px;
            border: 1px solid #999;
            border-radius: 4px;
        }

        .wishlist-container {
            max-width: 95%;
            margin: 40px auto;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }

        .wishlist-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }

        .wishlist-header h2 {
            font-size: 22px;
        }

        .wishlist-header button {
            background-color: #f6b1b1;
            border: none;
            padding: 8px 16px;
            font-weight: bold;
            color: #111;
            border-radius: 4px;
            cursor: pointer;
        }

        .products {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .product-card {
            background: white;
            width: 220px;
            border-radius: 10px;
            padding: 20px;
            position: relative;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }

        .product-card img {
            height: 150px;
            object-fit: contain;
            margin-bottom: 15px;
        }

        .product-card h4 {
            margin: 5px 0;
            font-size: 16px;
        }

        .price {
            font-size: 16px;
            margin-top: 10px;
        }

        .price del {
            color: gray;
            font-size: 14px;
            margin-left: 5px;
        }

        .discount-badge {
            background: red;
            color: white;
            font-size: 13px;
            padding: 3px 8px;
            position: absolute;
            top: 15px;
            left: 15px;
            border-radius: 4px;
            font-weight: bold;
        }

        .product-card button {
            margin-top: 20px;
            width: 100%;
            padding: 10px;
            background-color: black;
            color: white;
            border: none;
            border-radius: 2px;
            font-weight: bold;
            cursor: pointer;
        }

        .product-card button:hover {
            background-color: #333;
        }
    </style>
</head>
<body>

    <!-- Offer Banner -->
    <div class="top-banner">
        Summer Sale For All Swim Suits And Free Express Delivery - OFF 50%! <span>ShopNow</span>
    </div>

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">EarBudshub</div>
        <div class="menu">
            <a href="home.jsp">Home</a>
            <a href="Contact.jsp">Contact</a>
            <a href="About.jsp">About</a>
            <a href="Sinup.jsp">Sign Up</a>
        </div>
        <input type="text" placeholder="What are you looking for?" />
    </div>

    <!-- Wishlist Section -->
    <div class="wishlist-container">
        <div class="wishlist-header">
            <h2>Headphon's</h2>
            <button>Move All To Bag</button>
        </div>

        <div class="products">
            <!-- Product 1 -->
            <div class="product-card">
                <div class="discount-badge">-35%</div>
                <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSEhMVFhUVGBcXGBcVFhcYGBYYFhcXGBgVFhcYHSggGBolHRUXITEhJSsrLi4uGB8zODMtNygtLisBCgoKDg0OGxAQGi0mICUtLS0tLy0tLS0tLS0tLS0tLS01LS0tLS0tLS0tLS0tLS0tLS0tLS01LS0tLS0tLS0tLf/AABEIAOEA4QMBEQACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQcDBAYCCAH/xABJEAABAwICBgYHBQUFBwUAAAABAAIDBBEhMQUGEkFRYQcTInGBkRQyQlKhsdFicoLB8CNDkrLhCFOjwvEzc4OTlLPTFRYXNWP/xAAbAQEAAwEBAQEAAAAAAAAAAAAAAgMEAQUGB//EADgRAAIBAgQDBQgBAwMFAAAAAAABAgMRBBIhMUFRYQVxkbHwEyIygaHB0eFCFCPxM1KyBhVDYnL/2gAMAwEAAhEDEQA/ALxQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAaOltLwUzOsqJWxt+0cTyaMye5cbS3LKVGdV2grlb6d6YmAltLFtfbk/JgPxv4KmVV/xR6VPAUo/wCrK/SP5/Rxlf0k1suckjRwY7q/5AD8VW874m6n/TU/hpL56+dyO/8Adkp9cyHvkc5Vum+ZqhjIR2hbut+DfotaN3WyMP8AvHs+IOHjZRySRojiaM90vnFHSUGstSLdXVSchIRID3F97juKKc1syc8NhKms6S71p/xsibptf6qP/axRyDi27D59oHyCmsTNfEjNU7AwtT/Sm49+v48zpdE680k1g5xhcd0tgPB47PmQr4YiEuh4+J7DxdHVLMv/AF/G50wN8Qrzx3ofqAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAr/X7pKjoy6CnAlqMj/dxH7ZHrO+yPEjI1ynbRGzD4XP70tF5lGaY0zNUyGWeR0rzvccByAGDRyAtyVVr7no5lFZV4L15mkA4ruiI+/LY9tpieK5mRL2MuZ79DdzTMjjoy5nh0bhn8U0ONTRno698Z7JtxacWnw/PNclBMto4mUHo/kdXojTgf2Tn7pxP4Dv7s+9Uyi0etQxEZ7aPkSckDXDaYqpQ5HpUcRwZt6D1jqKQ2jddm+J9yzw3sPd8UhVlT2IYzs7D4tXmrS/3Lf8Afz+haWres0NW3sdmQetG620OY95vMeNl6FOrGex8Xj+zK2Dl72seDW36fTwuTatPOCAIAgCAIAgCAIAgCAIAgCAIAgCAq3pU6QjDtUdG+0uU0o/dA/u2H+84n2e/FtU520RuwuGze/L5euRSJJd+s+arN7bk7RNiCmUHM0U8Ot2b8VOAoXNKgbLI0O5TtNAdHNVOA6QCBh3yC7yOUYsR+IjuVsaUnuYK+Oo09I+8+m3j+Ds6Potomj9oZZTzcGjwDAD5kq1Ukjzp9oVJbJL5X8yP090PUkjb0z3wPGVyZGE/aDjtDwPgV32a4Faxcn8av9CodYtXKqgkDKhhAPqPbix1t7H/AJGx5Ktx5mynWT1i/wAokNB6YJIaT293CTv+38+9USjY9zD4hVVll8XDqdC9okbtt8QqZRPToV/4s1YZXRuD2OLXtN2uGBB4hV3ad0bJRjUi4yV090WxqZrW2qb1clmztGIyEgHtt/Mbl6NGspqz3Ph+1uyZYSWeGsH9Oj+zOoWg8UIAgCAIAgCAIAgCAIAgCAIAgOM6T9b/AEGn2YiPSJrtj+wPalI5Xw4kjgVCcrI04aj7SWuyPnWRxcTckkkkkm5cTmSd6pPVeryo26anVTZspU1E344rLhcb2jdHSTyNiiYXvccAPiSdwG8lEm9EcnOMIuUnZF0anajw0YEj7Sz++R2WcowcvvZnkMFqp0lHXifP4vHTre7HSPLn3/g61WmAIAgNPS2i4amJ0M7A+N2YPwIOYI3EYhcauSjJxd0fPWv2pUmjZQQS+mef2clsWnPq5LZO4HJ1iRaxApnGx6WHr5vX1PzQmlSRc+sPXHEe/wDXwO9ZpRsz6KhW9rG/8l9epM1UYI2m5FUzienQq30ZrwTOY9r2OLXtN2uGYIUE2ndGmcI1IuEldPdFz6qaebVwh+Akb2ZG8HcR9k5jxG5epSqKpG5+e9pYCWDrZN4vVPp+VxJpWnnhAEAQBAEAQBAEAQBAEAQGKqqGxsdJI4NYxpc5xyDWi5J8Ah1Jt2R8va3aefW1UlQ642zaNp9iNt9lvfY3PMlZm7u57VOHsoKK3NGkguq5M2Uqdlcl4YLKJdc26ekc9wYxpc5xAaBmScAAljt0ld7F3ak6rNoosbGd4HWOG77Dfsj458ANdOGVHzuMxTrz0+Fbfk6RWGMIAgCAIDT0voyKphfBM0OjkFnA/Ag7iDYg7iAjVzsZOLuj5t1j0JLo2sMLsQO1G45SxG+fPMEbiDyKzThwZ7eExLTUo+uhOaKqgRs37Lhdt+HA8wcPBZmuDPoIyWko7M9VEdiqWj0qU7okdV9NGkqGy47B7MgG9h324jMeI3qdKpklcz9o4JYug6fHePf+Hs/HgXbG8OAcDcEAgjIg5EL1T86acXZnpDgQBAEAQBAEAQBAEAQBAVn04ae6umZSMNnVB2n8omEEjltO2R3NcFXUeljbgqd5ZnwKRibc3VD0R6tOOaVydoabBQNTJFkSHEWV0Y6ugD0yQYm4iB3NydJ3nEDlfir6MP5M8rtHEf8Ahj8/x649xYSvPJCAIAgCAIAgOQ6TdVfTqQ7A/bw3fCd5Nu1F3OAt3hp3KMldF1Gpkl0KI0HVexvHbb4es3yF/wAKx1FxPqMFVzRdP5o6svD2Bw4KmSPUoT4GqVUzemWl0ZaX6yAwOPahts843er5EEd2yvQws7xyvgfHf9QYT2dZVo7T371v4799zs1pPnwgCAIAgCAIAgCAIAgCA+aekrS/pWkJ3g3ax3Us+7FcG3Iu2z+JZ5u8j2sPDJSXX7/oiNHQXIVTZvpxyxOigjsuHSY0Bok1M7IRcBx7RHssGLj5YDmQuxjmdiutVVKDn6uXhDEGNDWgBrQAAMgALABbT5ptt3Z7Q4EAQBAEAQBAEB8+dKmhPQtI9bGLRz/tmcA+9pWeZDvxqipE9fA1mrc0YtGTjFo9U2Le44j6eCyH0ikr3WzM8rcVU0ehTldEvqbpLqKyJ17Ncerf91+A8nbJ8FOjLLNMy9qYf2+FnHitV3r9XRdS9Q/PggCAIAgCAIAgCAIAgIzWfSXo1JUT744nuHNwadkeLrBcbsrk6cc01HmfK7RiL48e8rLwPfSu0joNFxYXUDUyZjahAsrox0ZsxvqSMXnYZ91p7RHe7D8Cvox4nldpVfeVNcNX3v8AXmdwrzywgCAIAgCAIAgCA4fph0N1+jnyAXfTETD7owkHdsFx72hQmrovw08tRdSl9D1HZad7SWnuOLf8yxTWp9Xh5Xpdx0EmKqkelSloY7KDNKZemr9d19NDKc3MG194YO+IK9WnLNFM/O8bR9jiJ01snp3cPoSCmZggCAIAgCAIAgCAIDgumut2NGlgzmljj8ATIf8At/FQqP3TXgo3q9xQ1M258Vmke3SV5M6egZYBRLmSUTTuFzuHE7ggReWiKIQwxxD2Ggd5tifE3PitsVZWPl61R1Jub4s210rCAIAgCAIAgCAIDHPC17XMcLtcC0jiCLEeSA+XhSmCeemdnG57Md5hcQD4gE+KxVVY+owFTMu9E/TyXaFTI9eizIqzUmWl0Y1W1Suj/u5DbueA75ly3YV3jY+S7ep5cQp815aeVjsFpPDCAIAgCAIAgCAIAgKk6fKqwpItxM0h/AGNb/O5U1dj0ez170mVVo9mSoluexRWh01MMFwsZ0uqFJ1lXC05B4ef+H2/m0DxUoK8kZ8VPJQk+lvHQuVbD5oIAgCAIAgCAIAgCAID5+6WqT0fSxktZszY5eWXVvA59i/4lnqxuz2ezq2RJvgyN0dNhs8CR5LK0fQU5pEqyMlRysu9uju+i8lskzfeY0/wkj/OtGGumzxe3ZKdOEuTf1/wWGth80EAQBAEAQBAEAQBAUV0+6YjNTDAGO62FhLnXGyWTWsOO0DH5OKhKOY0Yev7JvqVzRaTA9k+aqdFviehDtKKVnEnKbTY9w+YT2LJf9zh/tf0/JY/RHVslqZOy4OZFcXtbtOaDiDngPMqVOk4u7M2Lx0a1NQinvd3LYVx5wQBAEAQBAEAQBAEAQFG/wBo0OE1Gbmxjmw5h0dz8R5LjRJSa2ZVuip3XI2nZDeVzKuRNVqi/k/Fkqyd4ye7+I/VMkeR1Yiqv5vxJ/VDTtRDVwbEzg180LJAbODo3Ss229oG1xfEWKKKWyOTrVJq0pNo+kFIqCAIAgCAIAgCAIAgPmbptkvpece6yFv+E13+YoDiomm4OQAxzx5n9blw6S1MV0Fq9BjT6RVHcIox4l77/IeSHC40AQBAEAQBAEAQBAEAQFJ/2kc6DuqvnToCotFeufun5hAyZAQG5o07MsTuEjD5OBQH1IgCAIAgCAIAgCAIAgPmXpsI/wDV6jADCHHHH9izO5tywsgOLYbbN7i4uMwCL2uDvxBHguEiYoqRxxLSO8kfDNVutBcTfS7LxNRXy279Cx+irTEFFLOah5YJWxhp2XuxaX3B2QbesM+C4q8Ccux8Ulok+5/mxb2jtPU0+EM8Tz7rXja8W5jyU4zjLZmOrha1LWcGvlp4kipmcIAgCAIAgCAID8JQHM6W6QNHU5LX1DXOGBbEDKQeBLAQD3kKLnFcTRHC1Za5fsU90x66Q14p204eGx9bt9YxouXdVslpuSPVdfLdmiknsQqUpU/iK+0UO3+E/MKRUyaazv8AM/VAb2jLiRlgCS9vrAO9oe9dAfUKAIAgCAIAgCAIAgCA+ZOmn/7apP8AuR/gRoDR0HorBr3jFo7IPs3xJtxWWrUvoj6LszBqH9yoteHT9kmI8VlPoFsfpCA/NlcaOqVjotC64VlPYNlL2D2Jbvb4E9pvgVONWcdmZa/Z2FxHxRs+a0f4+hZOrWvUFSRG/wDYynANcey48GP3nkbHvWuniIy0ejPnsb2NWw6c4e9Hmt13r7q6OrV544QBAEAQHP60a2QUYs7tykdmJpx73H2G8z4AqE6iia8Ng513poufrcqvT+sVRV3659oz+6ZhGOTt7/xX8FmlNy3Pco4SnR+Fa8+P6OYrKG4wUS+SucrpYEO2eC00tjwMf8aQ0O3tOPAW8z/RWmAmmBASGiW/toh/+kf84QH02gCAIAgCAIAgCAIAgPnHXFjJ9KVU5xDZS1vDaja2Inw6vDvVVWXA9Hs+im3UfDbvPVFkVlZ9BSeh4mFiqmb4ao15JA0EnIfqyI7J2RpO0rwaPMqdjK5u+57j0u32mkdyZRGu1ub9PMyQdkg8lW4myjiE3oWLqPrsWFtPVOu04MlccWnc153t4O3b8MRoo17e7I8jtTsiNROth1rxiuPVdenHh1s1bT5MIAgOH1816bS3gp7OqCMTm2IHeeL+A3ZncDVUqZdEengsA6vvz+Hz/XXw6VIahz3Oe9xc9xu5zjcuPElZbnvqKSSWyNiNyCxjqapjM8T7oz8eAUoxctEVVq0KMbzZx+lCXyOfhY2wG63PetcI5UfNYmv7aea1jJo2Kzb8fkpGcko0BIaMOzLG45B7Ce4OBQH0ygCAIAgCAIAgCAICJ1s0t6LRz1GF42HZvltu7LAfxOagPnGklJbckklziScyb5nngs1X4j3MAv7K+ZJaMfmP1v8AoqmenT2M9W3FVSN9F6EZpEHYNuXzSO5zEXyaEDKHBW6HmSlJGDrFLKVqpcyQzFpDmmxC5YnGbTujsaCcTRh2/IjmqJRPXw9e6TLV6NtYzKz0WV15IxdhJxewezzc35W4FasPUusrPA7cwCpy/qKa917rk+fc/P5HcrUfPHDdI2uwpG9RAQah4xOfVNPtEe9wHidwNVSpl0W56OBwftXnn8Pn+ufh3Ut1hJLnEkk3JJJJJzJO9ZT6IzMch0wV2lAwWb63Hh9SpwpuXcYsXjY0FbeXIi2vLrlxNju3nm76LYkoqyPnKlWVSWabuzzMBkhWGTbgC48svEnBAZRNKLYRNvkHSG57sEudyvkbTaxzf9rHZvvsO20fe3tHNA007Mv3o31kNXTkSEGSHZaXD22uHYf3mxB7r77IcOtQBAEAQBAEAQBAcN00PtoqXgXwX/5zCPiAgKK0fJ2Dyc76/ms1X4j3Oz3/AGfmyR0dJZ368PzVTPRpvUlqkXbdQkbKL1I6dtwVBbmmorxZHSQqy5glC5H1VJvCmpGapRvqjTbwXWUx5MndWKnZk2Tk75qEjZQlbQ6uGodBKyaPBzHBw58QeRFweRKpu4u6PUUY1qbpT2at67tyy9adeoqejZPHYyztvEw7r5ueODThbeRbiR6DqrLdcT42n2dP28qc9ouz/Xf5alGVFS+R7pJHFz3klzjiSSsr1Z70UoqyR+AoSNPSGkNgbLT2j8FZTp5tXsYcbjVRjlj8T+hEMcSbnP8AWPetSPnJScndvUz9bhn4rpw8sN+7O28/0y8/BcbsThCU3oeoag9kjC23huwaSLjeoy10L6HuOM0tVfy0MjbeyNkY3J9kb2g3xzzw3Xuo6rcu92Xw6Li+XRa/jrc2YnhuLS4OGO+7gfeuMcv9FxNpkpQpSi1rda9X4pMt7oIpzs1UgFmXjY0bgRtuc0dxdhyIVqd0efKOWTTLXXSIQBAEAQBAEAQHH9LlMZNE1QHshknhFKx7vg0oD520W/1h3H8j8gqKy2Z6vZktJR7n9vwSMMlnA/r9WuqT1U7O50cJ2mkKDNcXZmhKFWbou6NVzVIzONjDJGpEHEiayCxupJ30MdWnld0IHbJDhuN0ZKGmp2stS3qusJwt5ngq3G5vhUyanN1E5ebk8gOA4cs1NKysZJzc5OT3Z4BQ4a9fW7DcPWP6upwhmZkxeKVCOm/Ag9ok3Oa1pW0PnJScnme7MjcrldOGSFu0RfK+A4n5X4XUZSsi6hSzySe3m+Xebj4wCwtxBcM8sCL78D3buN1UpN3uejKkqbi6equvlZ+dv3c1aZuQP2r/AMJVknxRhoxVlF9fIlKVtztOJsMyc7i+V8gMbDIC57qZO2iPToQUnmm9Fvzv9unBK7PyepY4EtwDb777je2AP6HBdjCS34ldXEUqqbhsr9eHcvVj6R1A0J6JQxREWe68snJ8h2i38Nw38KvirI8qrJSm2jol0rCAIAgCAIAgCA0tN0Anp5oDlLG+P+Npb+aA+R6GQtkDXYOsWuHA8D4iyrqK8TZgZ5ayXPQltpZj3Sd0VPcDHl/X81Fl8JZlcy1bMb8VXJG2jK6NNwXETqLiY3tUiqxqVUVwupldSGaJHMbuU2ZYrgbskzi1rCcG/PguIlKV9DwF04Y6moDG3PhzK7GLk7FVevGjDMyAkkLjtFbIpJWPmqtSVSTlI9sG85LpAyQxl5vuGV/moylZF1Cg6r6EhDA1tri+N8fe3G2Pde5HJUOTkerSo06dtOvz4OxikeTd2W5ov7RABtxtbHgppcCipOUrz24JdWkn4Wu+Rhhz7gT52U3sY4WcvkyRFiWxXttYu8BfZx4kDzKq2vJG92k40L76y87fPT6nS9HmgPSa2nDiSMJpRbDZjLXAXAyJ2GEH3ipRd5WS0RVVgqdJVHL3pLVW8Nemu59IK48wIAgCAIAgCAIAgCA+XulfRrKfStQ2OPq2uLJRiSHF42nPF8gX7XZGAtglrnYuzTXAjGyXAI3i/msbVtD6SM1KKkuJuaOqLOtx/Xy+QXGXUpa25k+TtNUGjXCVmaLwqzXfMjwV0rasYntXQRz27JJ3nL8yprUw1fcenE8NUipH654AucglriU1FXZBVtQXna3DC3AcVqhDKj57E4h1p34cDwxt1MzHr1jgCQOGN7cOQXG7E4RcnovA2g9jhZsmz3hwPmDYqr3k7tG9OjKKjCpl7019z9EkbBYEuPBoLQThmTn4Z70tJsZ6FJaPN0Wi+b/HgZGNc43dbKwAyaOH6+eUlFbIpqVXe9Te1klw9cfztJUmjwMTnz+inYy5nwM0jWBwa+NtnGwcLZ+QIK6czO9+JbnQfogsglqX4l7zGwkC+xGTtHDi8n+AZKEYpXaNFerKajFvb7lmqZmCAIAgCAIAgCAIAgKZ/tDaEuKetaPVvBIeTrvjJ5A7Y73hAVJo6XAt4Zdx/r81RVjrc9bA1bwcHw8jaDlWbbk7o6suPmoNWNkJ5lc2ZhvUGjVTmaxUS56nh5wvwQg3ZXZDvk2iTx+W5XpWVjyXUzycmAVwkmRmkam52RkM+ZWinDieTjsTmfs47Lc1GK084dXYeth8bfrBDhkicRa1hfIb7Zi4y81B6mmk5QWnHy8vEyl+1baaCT5+f1Kja2zLnPPbPH1662MsEQJ7IxPmPyCkk3uUznGPwqz8ibpKUN7/ANZKZnNsFAYJ6d801PTxDakkkbsj68BnjyKA+mNCaNbTU8UDTcRsa2+9xA7TjbeTc+KLQ7KTk7s3kIhAEAQBAEAQBAEAQETrZoRtbSTUrrDrWENcRfZeMWPtycGnwQHyXLG+GVzJGlr43OY9pzDmktc3zC5JXViylUdOSkjfDri4Wax7WZNXRlp5y0o1cnTquDJmGrBCqaPQjJPVH46RRaNCkamkZexb3jbwzP65qVON2ZsbVy07c9COBVrR50ZGKsn2W4ZnJdhG7K8RX9nDTdkUtJ4pljbZAfkp7PebDuFsfNRvqWZUqd+Lf0/yZqUWc/fuHmQPkFCWyNdBWnJ+t2kZXN3Zk5DZbmDYnLDEEDO9r4JFanK0lFau77l3N7adN2+hMUFMGjnvP5Kxuxkpwz7v1wN1rFBzSVy6GFnKWVNX9euYmeGgk7s+S7FuWpyrCFO8b3fPp+/LvLI6GNVDjpSobZ8rbU7TmyI5yd7932bn2lMzFsIAgCAIAgCAIAgCAIAgCAo3p41PLHjSULew/ZbUAey7BrJe44NPMN4lAVPST27Jy3clXON9UbMNWy+5LY3VUbz3FKW5LjVyynVcDaZUXVTjY9CnWUjFVPvblf42+inT4mfHXcYtdTCrDBGRF1L9p1/JXQVkediKmefRHhjVIpMn+vgLn8iuSZZTjd35evsYQ43byAt4Yn5XS2gzNuNuH2Nqjb8WOPiMfp5quX3NOH434xb+a1N+gZtHbPhy3n5/EqxKysZak88sxLseBbBRabLIVYwy2Wq8L+vA/TNYXwAz/qmRPclHFTh8GnHnd833HUdHmpT9IyNqahpFEw3DTgalzTlb+6BzO+1uNpJWM8pubuy+mtAFgLAZAbl0ifqAIAgCAIAgCAIAgCAIAgMVVTMkY6ORocx7S1zXC4c1wsQRwIQHzV0ldH0mjpDJGHPpHnsPzMZP7uT8nb+9AchT1NsHZceH1VcoX2NlHE5fdlsbrcclUb1Zq6PQauE0j3sk4ZrhNybWVmKdpDT3KxamKpeFyLIV55h+hAfj5MLA/lnw+qilrculNKGWL9euPgeoot5w5cAcLkccbAZnuXGyUKfGWnTlfn9lu30NsYNdhl2B5jaH8o52KhxXiaJO1OTX/wA/n7LxJCkYQxpAwI3cbm6tPPM7pbbiugsLUboxkqC2o0g0siwcynODpOBl3tb9nM77ZEC6Iow0BrQGtaAAALAAYAADIIcPSAIAgCAIAgCAIAgCAIAgCAIDFVU7JGOjka17HAtc1wDmuBzBBwIQFN65dCly6XRrwN/o8hwHKKQ5dzv4kBVOlNE1NG7ZqIZITe3baQ133Xeq/wACVFpMnCpKDvFmKLSA9oDvBsoOnyNsMdb4o+Bttroxmbd4+ig6cjTHG0Xvp8jai2ZSI2bTnPwa1jHOc48GtAuSihJPYVMRh5xs5fRmvrJq5UUUjY6mIxlw2m3sQ4b7OaSCRexGYw4gm88d9CIe3BBufkAs4G3ncLj1RZSvGSbXiZo2gWsXXBvxsdx3XXNS2No7N8+evPgZon2BytmQRhfzuPNRaLYTaTStZ8LHaao6h19VZ0bDBCcesmuARxjYRtP77Ac+Mlczy9kufj97FxaqdH9LRkSG804/eyAdk8Y2DBnfi7HNSsVOXLQ61dIhAEAQBAEAQBAEAQBAEAQBAEAQBAEB4lja4FrgHA5ggEHvBQHN1/R7oua+3RQgnfG3qj5xlpQEf/8AE2iL39Gd/wBRUf8AkQHRaF1bpKS/o1PHETgXNaNojgXntHxKA860auQV8DqedtwcWuHrRv3PYdxHkRcG4JCAojTfRNpGBx6uNtSzc+JzQbfajeQQeQ2u9cOkTFqTpAnZFDPfnGf5n9lccS5VraWXrvudLoTojr5SDN1dO3ft7L5PBkRsfFwXMh3+oa2Xl9ki0dWejuipNl2wZpW4iSazi08WN9VneBfmuqKRGdec9GdcpFIQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEB//2Q==" alt="BoAt Rockerz 550">
                <h4>BoAt Rockerz 550</h4>
                <div class="price">$120 <del>$200</del></div>
                <button>Add To Cart</button>
            </div>

            <!-- Product 2 -->
            <div class="product-card">
                <img src="data:image/jpeg;base64,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" alt="FireBolt EarBuds Pro">
                <h4>FireBolt EarBuds Pro</h4>
                <div class="price">$140</div>
                <button>Add To Cart</button>
            </div>

            <!-- Product 3 -->
            <div class="product-card">
                <img src="data:image/webp;base64,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" alt="BoAt Rockerz 600">
                <h4>BoAt Rockerz 600</h4>
                <div class="price">$140</div>
                <button>Add To Cart</button>
            </div>

            <!-- Product 4 -->
            <div class="product-card">
                <img src="data:image/jpeg;base64,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" alt="BoAt Black Urban">
                <h4>BoAt Black Urban</h4>
                <div class="price">$108</div>
                <button>Add To Cart</button>
            </div>
        </div>
    </div>

</body>
</html>
