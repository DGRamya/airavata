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

include "compute_resource_model.thrift"

namespace java org.apache.airavata.model.application.io
namespace php Airavata.Model.Application.Io
namespace cpp apache.airavata.model.application.io
namespace py apache.airavata.model.application.io

/**
 * Data Types supported in Airavata. The primitive data types
 *
*/
enum DataType{
	STRING,
	INTEGER,
	FLOAT,
	URI,
	STDOUT,
	STDERR
}

/**
 * Application Inputs. The paramters describe how inputs are passed to the application.
 *
 * name:
 *   Name of the parameter.
 *
 * value:
 *   Value of the parameter. A default value could be set during registration.
 *
 * type:
 *   Data type of the parameter
 *
 * applicationArguement:
 *   The argument flag sent to the application. Such as -p pressure.
 *
 * standardInput:
 *   When this value is set, the parameter is sent as standard input rather than a parameter.
 *   Typically this is passed using redirection operator ">".
 *
 * userFriendlyDescription:
 *   Description to be displayed at the user interface.
 *
 * metaData:
 *   Any metadat. This is typically ignore by Airavata and is used by gateways for application configuration.
 *
*/
struct InputDataObjectType {
    1: required string name,
    2: optional string value,
    3: optional DataType type,
    4: optional string applicationArgument,
    5: optional bool standardInput,
    6: optional string userFriendlyDescription,
    7: optional string metaData,
    8: optional i32 inputOrder,
    9: optional bool isRequired,
    10: optional bool requiredToAddedToCommandLine,
    11: optional bool dataStaged
}

/**
 * Application Outputs. The paramters describe how outputs generated by the application.
 *
 * name:
 *   Name of the parameter.
 *
 * value:
 *   Value of the parameter.
 *
 * type:
 *   Data type of the parameter
 *
 * applicationArguement:
 *   The argument flag sent to the application. Such as -p pressure.
 *
 * standardInput:
 *   When this value is set, the parameter is sent as standard input rather than a parameter.
 *   Typically this is passed using redirection operator ">".
 *
 * userFriendlyDescription:
 *   Description to be displayed at the user interface.
 *
 * metaData:
 *   Any metadat. This is typically ignore by Airavata and is used by gateways for application configuration.
 *
*/
struct OutputDataObjectType {
    1: required string name,
    2: optional string value,
    3: optional DataType type,
    4: optional string applicationArgument,
    5: optional bool isRequired,
    6: optional bool requiredToAddedToCommandLine,
    7: optional bool dataMovement,
    8: optional string location,
    9: optional string searchQuery
}