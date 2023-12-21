namespace srv;
using { API_BUSINESS_PARTNER as bp } from './external/API_BUSINESS_PARTNER';

service BpService {

    entity Supplier as projection on bp.A_Supplier {
        key Supplier as ID,
        SupplierFullName,
        SupplierName as SupplierShortName,
        SupplierAccountGroup as SupplierGroup,
        FiscalAddress as Address,
        CreatedByUser as RegisteredBy,
        CreationDate as CreatedAt,
    };

}