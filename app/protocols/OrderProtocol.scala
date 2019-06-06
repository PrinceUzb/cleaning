package protocols

import java.util.Date

import play.api.libs.json.Json

object OrderProtocol {

  case class AddOrder(orders: Order)

  case object GetAllOrders

  case class Order(id: Option[Int] = None,
                   surname: String,
                   firstName: String,
                   address: String,
                   phone: String,
                   orderDay: String,
                   email: String,
                   comment: String,
                   type1: String)

  implicit val orderFormat = Json.format[Order]


  case class AddPrice(price: PriceList)

  case object GetAllPrice

  case class PriceList(id: Option[Int] = None,
                       name: String,
                       count: String,
                       price: String)

  case class Count(id: Option[Int] = None,
                   name: String)

}
