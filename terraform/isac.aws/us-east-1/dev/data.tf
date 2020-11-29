
data "external" "jsonip" {
  program = ["curl", "https://jsonip.com/"]
}