package companysharingexternal

import uk.gov.ofwat.companysharing.collection.CompanyBundle
import uk.gov.ofwat.companysharing.collection.inputs.CompanyDataInput
import uk.gov.ofwat.companysharing.collection.inputs.DataInput
import uk.gov.ofwat.companysharing.collection.inputs.DataInputType
import uk.gov.ofwat.companysharing.collection.inputs.types.TableDataInput

class DataInputController {

    def index() { }

    def showInput(params){
        def companyDataInputId = params.companyDataInputId
        //Need to get the correct dataInput id!
        def companyBundleId = params.companyBundleId
        def companyDataInput = CompanyDataInput.get(companyDataInputId)
        def dataInput = companyDataInput.dataInput
        def type = params.type
        if(type == DataInputType.DISPLAY_TYPE.TABLE_DATA_INPUT){
            TableDataInput tableDataInput = TableDataInput.get(companyDataInputId)
            def companyPageInstanceId = tableDataInput.companyPageInstance.id
            render view: 'showTableInput', model: [companyBundleId:companyBundleId, dataInput:tableDataInput, companyPageInstanceId:companyPageInstanceId, dataInputId:dataInput.id]
        }
    }

}
