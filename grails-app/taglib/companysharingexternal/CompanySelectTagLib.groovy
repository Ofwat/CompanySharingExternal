package companysharingexternal

import uk.gov.ofwat.companysharing.company.Company
import uk.gov.ofwat.companysharing.external.SessionScopedService

class CompanySelectTagLib {

    def sessionScopedServiceProxy

    static defaultEncodeAs = [taglib:'none']
    static namespace = "companySelectTagLib"
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    def renderCompaniesSelect = { attrs, body ->
        def companies = Company.list()
        def result = "<ul class=\"languages hoverSelectorBlock\">"
        companies.each{
            result = result + "<li data-companyid='${it.id}' class='companySelect'><a href=\"#\">${it.name}</a></li>"
        }
        result = result + "</ul>"
        out << result
    }

    def showCompany = {attrs, body ->
        if(sessionScopedServiceProxy.currentCompany != null){
            out << "<span>Currently using company ${sessionScopedServiceProxy.currentCompany.name}</span>"
        }else{
            out << "<span>No selected company</span>"
        }
    }

}
