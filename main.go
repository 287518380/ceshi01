
package main

import "github.com/gin-gonic/gin"

func main() {
	r := gin.Default()
	r.GET("/ping/jinlaile", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"访问成功,服务器返回信息": "终于等到你来了",
		})
	})
	r.Run() // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}

//func main() {
//	fmt.Println("launching server at port 8080")
//	http.HandleFunc("/", func(w http.ResponseWriter,r *http.Request) {
//		fmt.Fprintf(w,"hello,%q",html.EscapeString(r.URL.Path))
//	})
//	log.Fatal(http.ListenAndServe(":8080",nil))
//}

