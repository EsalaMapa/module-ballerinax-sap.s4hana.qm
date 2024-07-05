// Copyright (c) 2024 WSO2 LLC. (http://www.wso2.org).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

type ExtractedInvoice record {
    record {
        PaperInvoice[] extracted_data;
    } eden\-ai;
};

type PaperInvoice record {
    string invoice_number;
    string date;
    record {string merchant_name;} merchant_information;
    InvoiceItem[] item_lines;
};

type InvoiceItem record {
    string description;
    int quantity;
};

type InspectionLot record {
    string Material;
    string Plant;
    int Quantity;
};

type S4HANAClientConfig record {|
    string hostname;
    string username;
    string password;
|};
