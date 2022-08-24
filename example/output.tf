# output "myoutput2" {
#   value       =[for k,v in var.shaik_loop:v]
# }


# output "myoutput1" {
#   value       =[for i in var.shaik_loop2:i]
# }


output "myoutput3" {
 value = {for k,v in var.shaik_loop : k => v}
}
