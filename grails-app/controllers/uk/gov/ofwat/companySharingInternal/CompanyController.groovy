package uk.gov.ofwat.companySharingInternal

import grails.plugin.springsecurity.annotation.Secured
import uk.gov.ofwat.companysharing.company.Company

class CompanyController {

    def springSecurityService
    def sessionScopedServiceProxy

    def index() { }

    @Secured(['ROLE_ADMIN', 'ROLE_OFWAT_USER'])
    def updateSessionCompany(params){
        def company = Company.get(params.companyId)
        if(company != null){
            sessionScopedServiceProxy.currentCompany = company
        }
        render companySelectTagLib.showCompany()
    }

}
