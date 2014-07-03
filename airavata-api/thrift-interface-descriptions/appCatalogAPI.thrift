/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *
 */

/*
 * Application Programming Interface definitions for Apache Airavata App Catalog.
 *
*/

include "airavataErrors.thrift"
include "airavataDataModel.thrift"
include "appCatalogModels.thrift"

namespace java org.apache.airavata.api.appcatalog
namespace php Airavata.API.AppCatalog
namespace cpp airavata.api.appcatalog
namespace perl AiravataAPI.AppCatalog
namespace py airavata.api.appcatalog
namespace js AiravataAPI.AppCatalog

service ApplicationCatalogAPI {

/*
 * Apache Airavata API Service Methods. For data structures associated in the signatures, please see included thrift files
*/

  /** Query Airavata to fetch the API version */
  string GetAPIVersion(),
  
  /**
   * Manage Computer Resources
  */
  string addComputeResourceDescription(1: required computeHostModel.ComputeResourceDescription computeResourceDescription)
    throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)
            
  string addSSHJobSubmissionProtocol(1: required string computeResourceId, 2: required computeHostModel.SSHJobSubmission jobSubmission)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)
            
  string addGSISSHJobSubmissionProtocol(1: required string computeResourceId, 2: required computeHostModel.GSISSHJobSubmission jobSubmission)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)
            
  string addGlobusJobSubmissionProtocol(1: required string computeResourceId, 2: required computeHostModel.GlobusJobSubmission jobSubmission)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)     
            
  string addSCPDataMovementProtocol(1: required string computeResourceId, 2: required computeHostModel.SCPDataMovement dataMovement)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase) 
            
  string addGridFTPDataMovementProtocol(1: required string computeResourceId, 2: required computeHostModel.GridFTPDataMovement dataMovement)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)             
            
  list<string> listComputeResourceDescriptions()
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)

  computeHostModel.ComputeResourceDescription getComputeResourceDescription(1: required string computeResourceId)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)

  computeHostModel.SSHJobSubmission getSSHJobSubmissionProtocol(1: required string sshJobSubmissionProtocolResourceId)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)
            
  computeHostModel.GSISSHJobSubmission getGSISSHJobSubmissionProtocol(1: required string gsisshJobSubmissionProtocolResourceId)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)
            
  computeHostModel.GlobusJobSubmission getGlobusJobSubmissionProtocol(1: required string globusJobSubmissionProtocolResourceId)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)     
            
  computeHostModel.SCPDataMovement getSCPDataMovementProtocol(1: required string scpDataMovementResourceId)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase) 
              
  computeHostModel.GridFTPDataMovement getGridFTPDataMovementProtocol(1: required string gridFTPDataMovementResourceId)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase) 

  bool isComputeResourceDescriptionRegistered(1: required string hostName)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)

  computeHostModel.ComputeResourceDescription getComputeResourceDescriptionFromHostName(1: required string hostName)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)
                       
  /**
   * Manage Application Interfaces
  */
  string addApplicationInterface(1: required applicationInterfaceModel.ApplicationInterfaceDescription applicationInterface)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)
            
  list<string> listApplicationInterfaceIds()
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)  

  applicationInterfaceModel.ApplicationInterfaceDescription getApplicationInterface(1: required string applicationInterfaceId)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)  

  /**
   * Manage application modules
  */

  string registerAppicationModule(1: required applicationDeploymentModel.ApplicationModule applicationModule,
            2:optional bool publish)
    	throws (1: airavataErrors.InvalidRequestException ire,
              2: airavataErrors.AiravataClientException ace,
              3: airavataErrors.AiravataSystemException ase)

  applicationDeploymentModel.ApplicationModule getAppicationModule(1: required string appModuleId)
      	throws (1: airavataErrors.InvalidRequestException ire,
                2: airavataErrors.AiravataClientException ace,
                3: airavataErrors.AiravataSystemException ase)

  bool updateAppicationModule(1: required string appModuleId,
            2: required applicationDeploymentModel.ApplicationModule applicationModule)
      	throws (1: airavataErrors.InvalidRequestException ire,
                2: airavataErrors.AiravataClientException ace,
                3: airavataErrors.AiravataSystemException ase)

  bool deleteAppicationModule(1: required string appModuleId)
         	throws (1: airavataErrors.InvalidRequestException ire,
                   2: airavataErrors.AiravataClientException ace,
                   3: airavataErrors.AiravataSystemException ase)

  /**
   * Manage application modules
  */

  string addApplicationDeployment(1: required string applicationInterfaceId, 2: required applicationDeploymentModel.ApplicationDeploymentDescription applicationDeployment)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)   
            
  list<string> listApplicationDeploymentIds(1: required string applicationInterfaceId)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)  

  applicationDeploymentModel.ApplicationDeploymentDescription getApplicationDeployment(1: required string applicationInterfaceId, 2: required string applicationDeploymentId)
  	throws (1: airavataErrors.InvalidRequestException ire,
            2: airavataErrors.AiravataClientException ace,
            3: airavataErrors.AiravataSystemException ase)  
}