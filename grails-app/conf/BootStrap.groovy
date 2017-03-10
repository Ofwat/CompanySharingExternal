import uk.gov.ofwat.employee.Role
import uk.gov.ofwat.employee.User
import uk.gov.ofwat.employee.UserRole

class BootStrap {
    def init = { servletContext ->

        def roleAdmin
        def roleCompanyAdmin
        def roleCompanyUser
        def roleOfwatUser
        def roleUser

        roleAdmin = Role.findByAuthority('ROLE_ADMIN')
        roleCompanyUser = Role.findByAuthority('ROLE_COMPANY_USER')
        roleCompanyAdmin = Role.findByAuthority('ROLE_COMPANY_ADMIN')
        roleOfwatUser = Role.findByAuthority('ROLE_OFWAT_USER')
        roleUser = Role.findByAuthority('ROLE_USER')

        if(roleAdmin == null) {
            roleAdmin = new Role('ROLE_ADMIN')
            roleAdmin.save(flush:true)
        }

        if(roleCompanyUser== null){
            roleCompanyUser = new Role('ROLE_COMPANY_USER')
            roleCompanyUser.save(flush:true)
        }

        if(roleCompanyAdmin== null){
            roleCompanyAdmin = new Role('ROLE_COMPANY_ADMIN')
            roleCompanyAdmin.save(flush:true)
        }

        if(roleOfwatUser== null){
            roleOfwatUser = new Role('ROLE_OFWAT_USER')
            roleOfwatUser.save(flush:true)
        }

        if(roleUser== null){
            roleUser = new Role('ROLE_USER')
            roleUser.save(flush:true)
        }
        def admin = User.findByUsername('admin')
        if(admin == null) {
            admin = new User('admin', 'admin').save(flush: true)
        }
        def userRole
        userRole = new UserRole(admin, roleAdmin).save(flush:true)
        userRole = new UserRole(admin, roleOfwatUser).save(flush:true)
        userRole = new UserRole(admin, roleCompanyUser).save(flush:true)
        userRole = new UserRole(admin, roleUser).save(flush:true)

    }
    def destroy = {
    }
}