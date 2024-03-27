connection: "snowflake"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: companies {
# sql_always_where: companies.company_status = 'Active' ;;
}
