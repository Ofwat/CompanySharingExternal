package companysharingexternal

import uk.gov.ofwat.companysharing.CompanyBundleService
import uk.gov.ofwat.companysharing.collection.CompanyBundle

class DataBundleController {

    CompanyBundleService companyBundleService
    def sessionScopedServiceProxy
    /**
     * Return a list of published data bundles for this company!
     */
    def index() {
        def company = sessionScopedServiceProxy.currentCompany
        def companyBundles = companyBundleService.getPublishedBundlesForCompany(company)
        [companyBundles:companyBundles]
    }

    def show(params){
        CompanyBundle companyBundle = CompanyBundle.get(params.companyBundleId)
        response.status = 500
        if(companyBundle != null){
            def dataResults = []
            response.status = 200
            def dataInputs = companyBundleService.getCompanyDataInputsForCompanyBundle(companyBundle)
            return [dataBundle:companyBundle.dataBundle, dataInputs:dataInputs, companyBundle: companyBundle]
            /*
            def inputs = []
            dataInputs.each {

                dataInputs.add([companyDataInput:it.getCompanyDataInputForCompany(companyBundle.company),dataInput:it])
            }
            return [dataBundle:dataBundle, dataInputs:dataInputs]
            */
        }
    }

}
